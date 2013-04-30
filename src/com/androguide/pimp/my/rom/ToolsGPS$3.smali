.class Lcom/androguide/pimp/my/rom/ToolsGPS$3;
.super Ljava/lang/Object;
.source "ToolsGPS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsGPS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 103
    .parameter "v"

    .prologue
    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    move/from16 v98, v0

    const/16 v99, 0x1

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_4

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900d5

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 530
    .local v13, url_1a:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_3

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_2

    .line 532
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 533
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 534
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 535
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 536
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 537
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 538
    const-string v101, "busybox mount -o ro,remount /system"

    .line 532
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 541
    .local v3, command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_0
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .local v5, dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 550
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .local v9, t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$1;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 711
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .end local v13           #url_1a:Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_15

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900db

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 717
    .local v19, url_a:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_14

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_13

    .line 719
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 720
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 721
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 722
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 723
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 724
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 725
    const-string v101, "busybox mount -o ro,remount /system"

    .line 719
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 728
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_14

    .line 734
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 735
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$7;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$7;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2395
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .end local v19           #url_a:Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 541
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    .restart local v13       #url_1a:Ljava/lang/String;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 542
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 543
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 544
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 545
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 554
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v13           #url_1a:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    move/from16 v98, v0

    const/16 v99, 0x2

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_7

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900d6

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 560
    .local v14, url_1b:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_6

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_5

    .line 562
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 563
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 564
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 565
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 566
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 567
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 568
    const-string v101, "busybox mount -o ro,remount /system"

    .line 562
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 571
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_5

    .line 579
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 580
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$2;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 571
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4

    .line 572
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 573
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 574
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 575
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4

    .line 585
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v14           #url_1b:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    move/from16 v98, v0

    const/16 v99, 0x3

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_a

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900d7

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 591
    .local v15, url_1c:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_9

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_8

    .line 593
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 594
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 595
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 596
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 597
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 598
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 599
    const-string v101, "busybox mount -o ro,remount /system"

    .line 593
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 602
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_8

    .line 608
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_5
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 609
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$3;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 602
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_6
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_5

    .line 603
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 604
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 605
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 606
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_5

    .line 615
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v15           #url_1c:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    move/from16 v98, v0

    const/16 v99, 0x3

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_d

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900d8

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 621
    .local v16, url_1d:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_c

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_b

    .line 623
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 624
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 625
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 626
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 627
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 628
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 629
    const-string v101, "busybox mount -o ro,remount /system"

    .line 623
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 632
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_b

    .line 638
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_6
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 639
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$4;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 632
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_6

    .line 633
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 634
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 635
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 636
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 645
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v16           #url_1d:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    move/from16 v98, v0

    const/16 v99, 0x5

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_10

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900d9

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 651
    .local v17, url_1e:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_f

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_e

    .line 653
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 654
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 655
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 656
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 657
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 658
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 659
    const-string v101, "busybox mount -o ro,remount /system"

    .line 653
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 662
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_5
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_e

    .line 668
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_7
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 669
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$5;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$5;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 662
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_7

    .line 663
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 664
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_7

    .line 665
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 666
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_7

    .line 675
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v17           #url_1e:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    move/from16 v98, v0

    const/16 v99, 0x6

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_0

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900da

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 681
    .local v18, url_1f:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_12

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_11

    .line 683
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 684
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 685
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 686
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 687
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 688
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 689
    const-string v101, "busybox mount -o ro,remount /system"

    .line 683
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 692
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_6
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_11

    .line 698
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_8
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 699
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$6;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$6;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 692
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .end local v7           #e:Ljava/io/IOException;
    :catch_11
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_8

    .line 693
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 694
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_8

    .line 695
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 696
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_8

    .line 728
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v18           #url_1f:Ljava/lang/String;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    .restart local v19       #url_a:Ljava/lang/String;
    :catch_12
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .end local v7           #e:Ljava/io/IOException;
    :catch_14
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 729
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 730
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 731
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 732
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 740
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v19           #url_a:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_18

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900dc

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 746
    .local v23, url_b:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_17

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_16

    .line 748
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 749
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 750
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 751
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 752
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 753
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 754
    const-string v101, "busybox mount -o ro,remount /system"

    .line 748
    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 757
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_7
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_17

    .line 763
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_9
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 764
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$8;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$8;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 757
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_15
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .end local v7           #e:Ljava/io/IOException;
    :catch_17
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_9

    .line 758
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 759
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 760
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 761
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 768
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v23           #url_b:Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_1b

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900dd

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 772
    .local v26, url_c:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_1a

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_19

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 773
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 774
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 775
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 776
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 777
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 778
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 779
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_8
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_1a

    .line 784
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_a
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 785
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$9;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$9;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 779
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_18
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .end local v7           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_a

    .line 780
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 781
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_a

    .line 782
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 783
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_a

    .line 789
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v26           #url_c:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_1e

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900de

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 793
    .local v29, url_d:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_1d

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_1c

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 794
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 795
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 796
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 797
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 798
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 799
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 800
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_9
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_1d

    .line 805
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_b
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 806
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$10;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$10;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 800
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1b
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .end local v7           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_b

    .line 801
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 802
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_b

    .line 803
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 804
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_b

    .line 810
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v29           #url_d:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x5

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_21

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900df

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 814
    .local v32, url_e:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_20

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_1f

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 815
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 816
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 817
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 818
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 819
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 820
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 821
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_a
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_20

    .line 826
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_c
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 827
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$11;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$11;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 821
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .end local v7           #e:Ljava/io/IOException;
    :catch_20
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_c

    .line 822
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 823
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_c

    .line 824
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 825
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_c

    .line 832
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v32           #url_e:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x6

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_24

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e0

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 836
    .local v35, url_f:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_23

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_22

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 837
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 838
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 839
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 840
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 841
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 842
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 843
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_b
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_23

    .line 848
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_d
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 849
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$12;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$12;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 843
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_21
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_22
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .end local v7           #e:Ljava/io/IOException;
    :catch_23
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_d

    .line 844
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 845
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 846
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 847
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_d

    .line 854
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v35           #url_f:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x7

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_27

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e1

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 858
    .local v38, url_g:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_26

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_25

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 859
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 860
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 861
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 862
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 863
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 864
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 865
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_c
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_c} :catch_26

    .line 870
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_e
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 871
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$13;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$13;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 865
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_24
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_25
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .end local v7           #e:Ljava/io/IOException;
    :catch_26
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_e

    .line 866
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 867
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_e

    .line 868
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 869
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_e

    .line 876
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v38           #url_g:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x8

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_2a

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e2

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 880
    .local v41, url_h:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_29

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_28

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 881
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 882
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 883
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 884
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 885
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 886
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 887
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_d
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_28
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_d} :catch_29

    .line 892
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_f
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 893
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$14;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$14;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 887
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_27
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_f

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_28
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .end local v7           #e:Ljava/io/IOException;
    :catch_29
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_f

    .line 888
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 889
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_f

    .line 890
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 891
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_f

    .line 897
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v41           #url_h:Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x9

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_2d

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e3

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 901
    .local v44, url_i:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_2c

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_2b

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 902
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 903
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 904
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 905
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 906
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 907
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 908
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_e
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_e} :catch_2c

    .line 913
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_10
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 914
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$15;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$15;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 908
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_2a
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_10

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_2b
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .end local v7           #e:Ljava/io/IOException;
    :catch_2c
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_10

    .line 909
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 910
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_10

    .line 911
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 912
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_10

    .line 918
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v44           #url_i:Ljava/lang/String;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0xa

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_30

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e4

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 922
    .local v47, url_j:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_2f

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_2e

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 923
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    .line 924
    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    .line 925
    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 926
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 927
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 928
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 929
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_f
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_f} :catch_2f

    .line 934
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_11
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 935
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$16;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$16;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 929
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_2d
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_2e
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .end local v7           #e:Ljava/io/IOException;
    :catch_2f
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_11

    .line 930
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 931
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_11

    .line 932
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 933
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_11

    .line 940
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v47           #url_j:Ljava/lang/String;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0xb

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_33

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e5

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 944
    .local v50, url_k:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_32

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_31

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 945
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 947
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 949
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 950
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 951
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_10
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_31
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_10} :catch_32

    .line 956
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_12
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 957
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$17;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$17;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 951
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_30
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_12

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_31
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .end local v7           #e:Ljava/io/IOException;
    :catch_32
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_12

    .line 952
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 953
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 954
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 955
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_12

    .line 962
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v50           #url_k:Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0xc

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_36

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e6

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 966
    .local v53, url_l:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_35

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_34

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 967
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 969
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 971
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 972
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 973
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_11
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_33
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_34
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_11} :catch_35

    .line 978
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_13
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 979
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$18;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$18;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 973
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_33
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_13

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_34
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .end local v7           #e:Ljava/io/IOException;
    :catch_35
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_13

    .line 974
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 975
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_13

    .line 976
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 977
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_13

    .line 984
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v53           #url_l:Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0xd

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_39

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e7

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 988
    .local v56, url_m:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_38

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_37

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 989
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 991
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 993
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 994
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 995
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_12
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_36
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_37
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_12 .. :try_end_12} :catch_38

    .line 1000
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_14
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1001
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$19;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$19;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 995
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_36
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_37
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .end local v7           #e:Ljava/io/IOException;
    :catch_38
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_14

    .line 996
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 997
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_14

    .line 998
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 999
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_14

    .line 1005
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v56           #url_m:Ljava/lang/String;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0xe

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_3c

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e8

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 1009
    .local v59, url_n:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_3b

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_3a

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1010
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1012
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1014
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1015
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1016
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_13
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_39
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_13} :catch_3b

    .line 1021
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_15
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1022
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$20;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$20;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1016
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_39
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_3a
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .end local v7           #e:Ljava/io/IOException;
    :catch_3b
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_15

    .line 1017
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1018
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_15

    .line 1019
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1020
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_15

    .line 1026
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v59           #url_n:Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0xf

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_3f

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900e9

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 1030
    .local v62, url_o:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_3e

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_3d

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1031
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1033
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1035
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1036
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1037
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_14
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_3c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_14 .. :try_end_14} :catch_3e

    .line 1042
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_16
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1043
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$21;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$21;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1037
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3c
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_16

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_3d
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .end local v7           #e:Ljava/io/IOException;
    :catch_3e
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_16

    .line 1038
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1039
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_16

    .line 1040
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1041
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_16

    .line 1047
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v62           #url_o:Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x10

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_42

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900ea

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v65

    .line 1051
    .local v65, url_p:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_41

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_40

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1052
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1054
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1056
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1057
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1058
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_15
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_3f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_40
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_15} :catch_41

    .line 1063
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_17
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1064
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$22;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$22;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1058
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3f
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_17

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_40
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .end local v7           #e:Ljava/io/IOException;
    :catch_41
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_17

    .line 1059
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1060
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_17

    .line 1061
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1062
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_17

    .line 1068
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v65           #url_p:Ljava/lang/String;
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x11

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_45

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900eb

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 1072
    .local v68, url_q:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_44

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_43

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1073
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1075
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1077
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1078
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1079
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_16
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_42
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_43
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_16} :catch_44

    .line 1084
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_18
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1085
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$23;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$23;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1079
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_42
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_18

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_43
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    .end local v7           #e:Ljava/io/IOException;
    :catch_44
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_18

    .line 1080
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1081
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_18

    .line 1082
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1083
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_18

    .line 1089
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v68           #url_q:Ljava/lang/String;
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x12

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_48

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900ec

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v71

    .line 1093
    .local v71, url_r:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_47

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_46

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1094
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1096
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1098
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1099
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1100
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_17
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_45
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_46
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_17} :catch_47

    .line 1105
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_19
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1106
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$24;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$24;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1100
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_45
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_46
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .end local v7           #e:Ljava/io/IOException;
    :catch_47
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_19

    .line 1101
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1102
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_19

    .line 1103
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1104
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_19

    .line 1111
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v71           #url_r:Ljava/lang/String;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x13

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_4b

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900ed

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v74

    .line 1115
    .local v74, url_s:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_4a

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_49

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1116
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1118
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1120
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1121
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1122
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_18
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_48
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_49
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_18 .. :try_end_18} :catch_4a

    .line 1127
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1a
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1128
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$25;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$25;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1122
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_48
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1a

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_49
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .end local v7           #e:Ljava/io/IOException;
    :catch_4a
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1a

    .line 1123
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1124
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1a

    .line 1125
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1126
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1a

    .line 1132
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v74           #url_s:Ljava/lang/String;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x14

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_4e

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900ee

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 1136
    .local v77, url_t:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_4d

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_4c

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1137
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1139
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1141
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1142
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1143
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_19
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_4b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_19 .. :try_end_19} :catch_4d

    .line 1148
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1b
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1149
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$26;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$26;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1143
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_4b
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1b

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4c
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .end local v7           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1b

    .line 1144
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1145
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1b

    .line 1146
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1147
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1b

    .line 1153
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v77           #url_t:Ljava/lang/String;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x15

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_51

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900ef

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 1157
    .local v80, url_u:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_50

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_4f

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1158
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1160
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1162
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1163
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1164
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1a
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1a .. :try_end_1a} :catch_50

    .line 1169
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1c
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1170
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$27;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$27;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1164
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_4e
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1c

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4f
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    .end local v7           #e:Ljava/io/IOException;
    :catch_50
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1c

    .line 1165
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1166
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1c

    .line 1167
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1168
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1c

    .line 1174
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v80           #url_u:Ljava/lang/String;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x16

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_54

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f0

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v83

    .line 1178
    .local v83, url_v:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_53

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_52

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1179
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1181
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1183
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1184
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1185
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1b
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_51
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_52
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1b .. :try_end_1b} :catch_53

    .line 1190
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1d
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1191
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$28;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$28;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1185
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_51
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_52
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .end local v7           #e:Ljava/io/IOException;
    :catch_53
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1d

    .line 1186
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1187
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1d

    .line 1188
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1189
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1d

    .line 1195
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v83           #url_v:Ljava/lang/String;
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x17

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_57

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f1

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v86

    .line 1199
    .local v86, url_w:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_56

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_55

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1200
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1202
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1204
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1205
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1206
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1c
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_54
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_55
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1c .. :try_end_1c} :catch_56

    .line 1211
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1e
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1212
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$29;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$29;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1206
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_54
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1e

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_55
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .end local v7           #e:Ljava/io/IOException;
    :catch_56
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1e

    .line 1207
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1208
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1e

    .line 1209
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1210
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1e

    .line 1216
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v86           #url_w:Ljava/lang/String;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x18

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_5a

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f2

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v89

    .line 1220
    .local v89, url_x:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_59

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_58

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1221
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1223
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1225
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1226
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1227
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1d
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_57
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_58
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1d .. :try_end_1d} :catch_59

    .line 1232
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1f
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1233
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$30;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$30;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1227
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_57
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1f

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_58
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .end local v7           #e:Ljava/io/IOException;
    :catch_59
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1f

    .line 1228
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1229
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1f

    .line 1230
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1231
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1f

    .line 1237
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v89           #url_x:Ljava/lang/String;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x19

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_5d

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f3

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v92

    .line 1241
    .local v92, url_y:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_5c

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_5b

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1242
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1244
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1246
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1247
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1248
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1e
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_5a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_5b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1e .. :try_end_1e} :catch_5c

    .line 1253
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_20
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1254
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$31;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$31;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1248
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_5a
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_20

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_5b
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .end local v7           #e:Ljava/io/IOException;
    :catch_5c
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_20

    .line 1249
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1250
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_20

    .line 1251
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1252
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_20

    .line 1258
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v92           #url_y:Ljava/lang/String;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1a

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_60

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f4

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v95

    .line 1262
    .local v95, url_z:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_5f

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_5e

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1263
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1265
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1267
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1268
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1269
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_1f
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_5d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_5e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_1f} :catch_5f

    .line 1274
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_21
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1275
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$32;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$32;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1269
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_5d
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_21

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_5e
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .end local v7           #e:Ljava/io/IOException;
    :catch_5f
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_21

    .line 1270
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1271
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_21

    .line 1272
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1273
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_21

    .line 1279
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v95           #url_z:Ljava/lang/String;
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1b

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_63

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f5

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1283
    .local v20, url_aa:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_62

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_61

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1284
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1286
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1288
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1289
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1290
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_20
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_60
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_61
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_20 .. :try_end_20} :catch_62

    .line 1295
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_22
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1296
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$33;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$33;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1290
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_60
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_22

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_61
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .end local v7           #e:Ljava/io/IOException;
    :catch_62
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_22

    .line 1291
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1292
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_22

    .line 1293
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1294
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_22

    .line 1300
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v20           #url_aa:Ljava/lang/String;
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1c

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_66

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f6

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1304
    .local v24, url_bb:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_65

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_64

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1305
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1307
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1309
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1310
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1311
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_21
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_63
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_64
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_21 .. :try_end_21} :catch_65

    .line 1316
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_23
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1317
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$34;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$34;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1311
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_63
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_23

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_64
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .end local v7           #e:Ljava/io/IOException;
    :catch_65
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_23

    .line 1312
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1313
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_23

    .line 1314
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1315
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_23

    .line 1322
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v24           #url_bb:Ljava/lang/String;
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1d

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_69

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f7

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1326
    .local v27, url_cc:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_68

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_67

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1327
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1329
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1331
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1332
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1333
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_22
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_22} :catch_66
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_67
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_22} :catch_68

    .line 1338
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_24
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1339
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$35;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$35;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1333
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_66
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_24

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_67
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    .end local v7           #e:Ljava/io/IOException;
    :catch_68
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_24

    .line 1334
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1335
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_24

    .line 1336
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1337
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_24

    .line 1343
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v27           #url_cc:Ljava/lang/String;
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1e

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_6c

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f8

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1347
    .local v30, url_dd:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_6b

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_6a

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1348
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1350
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1352
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1353
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1354
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_23
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_69
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_6a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_23 .. :try_end_23} :catch_6b

    .line 1359
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_25
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1360
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$36;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$36;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1354
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_69
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_25

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_6a
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .end local v7           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_25

    .line 1355
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1356
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_25

    .line 1357
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1358
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_25

    .line 1364
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v30           #url_dd:Ljava/lang/String;
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x1f

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_6f

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900f9

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1368
    .local v33, url_ee:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_6e

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_6d

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1369
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1371
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1373
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1374
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1375
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_24
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_6c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_6d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_24} :catch_6e

    .line 1380
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_26
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1381
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$37;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$37;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1375
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_6c
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_26

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_6d
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .end local v7           #e:Ljava/io/IOException;
    :catch_6e
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_26

    .line 1376
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1377
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_26

    .line 1378
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1379
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_26

    .line 1385
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v33           #url_ee:Ljava/lang/String;
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x20

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_72

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900fa

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1389
    .local v36, url_ff:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_71

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_70

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1390
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1392
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1394
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1395
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1396
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_25
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_6f
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_70
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_25 .. :try_end_25} :catch_71

    .line 1401
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_27
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1402
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$38;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$38;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1396
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_6f
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_27

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_70
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .end local v7           #e:Ljava/io/IOException;
    :catch_71
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_27

    .line 1397
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1398
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_27

    .line 1399
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1400
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_27

    .line 1406
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v36           #url_ff:Ljava/lang/String;
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x21

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_75

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900fb

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1410
    .local v39, url_gg:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_74

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_73

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1411
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1413
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1415
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1416
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1417
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_26
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_26} :catch_72
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_73
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_26 .. :try_end_26} :catch_74

    .line 1422
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_28
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1423
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$39;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$39;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1417
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_72
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_28

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_73
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .end local v7           #e:Ljava/io/IOException;
    :catch_74
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_28

    .line 1418
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1419
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_28

    .line 1420
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1421
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_28

    .line 1427
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v39           #url_gg:Ljava/lang/String;
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x22

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_78

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900fc

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1431
    .local v42, url_hh:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_77

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_76

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1432
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1434
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1436
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1437
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1438
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_27
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_27} :catch_75
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_76
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_27 .. :try_end_27} :catch_77

    .line 1443
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_29
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1444
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$40;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$40;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1438
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_75
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_29

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_76
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .end local v7           #e:Ljava/io/IOException;
    :catch_77
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_29

    .line 1439
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1440
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_29

    .line 1441
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1442
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_29

    .line 1448
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v42           #url_hh:Ljava/lang/String;
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x23

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_7b

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900fd

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1452
    .local v45, url_ii:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_7a

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_79

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1453
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1455
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1457
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1458
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1459
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_28
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_78
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_79
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_28 .. :try_end_28} :catch_7a

    .line 1464
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2a
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1465
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$41;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$41;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1459
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_78
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2a

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_79
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .end local v7           #e:Ljava/io/IOException;
    :catch_7a
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2a

    .line 1460
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1461
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2a

    .line 1462
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1463
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2a

    .line 1469
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v45           #url_ii:Ljava/lang/String;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x24

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_7e

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900fe

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 1473
    .local v48, url_jj:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_7d

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_7c

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1474
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1476
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1478
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1479
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1480
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_29
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_29} :catch_7b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_7c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_29 .. :try_end_29} :catch_7d

    .line 1485
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2b
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1486
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$42;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$42;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1480
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_7b
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2b

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7c
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    .end local v7           #e:Ljava/io/IOException;
    :catch_7d
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2b

    .line 1481
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1482
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2b

    .line 1483
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1484
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2b

    .line 1490
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v48           #url_jj:Ljava/lang/String;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x25

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_81

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f0900ff

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1494
    .local v51, url_kk:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_80

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_7f

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1495
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1497
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1499
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1500
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1501
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2a
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_7e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_7f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2a .. :try_end_2a} :catch_80

    .line 1506
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2c
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1507
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$43;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$43;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1501
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_7e
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2c

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7f
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .end local v7           #e:Ljava/io/IOException;
    :catch_80
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2c

    .line 1502
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1503
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2c

    .line 1504
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1505
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2c

    .line 1511
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v51           #url_kk:Ljava/lang/String;
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x26

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_84

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090100

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1515
    .local v54, url_ll:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_83

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_82

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1516
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1518
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1520
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1521
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1522
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2b
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2b} :catch_81
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_82
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2b .. :try_end_2b} :catch_83

    .line 1527
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2d
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1528
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$44;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$44;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1522
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_81
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2d

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_82
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d

    .end local v7           #e:Ljava/io/IOException;
    :catch_83
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2d

    .line 1523
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1524
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2d

    .line 1525
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1526
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2d

    .line 1532
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v54           #url_ll:Ljava/lang/String;
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x27

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_87

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090101

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1536
    .local v57, url_mm:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_86

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_85

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1537
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1539
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1541
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1542
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1543
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2c
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2c} :catch_84
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_85
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2c .. :try_end_2c} :catch_86

    .line 1548
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2e
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1549
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$45;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$45;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1543
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_84
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2e

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_85
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .end local v7           #e:Ljava/io/IOException;
    :catch_86
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2e

    .line 1544
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1545
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2e

    .line 1546
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1547
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2e

    .line 1553
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v57           #url_mm:Ljava/lang/String;
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x28

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_8a

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090102

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 1557
    .local v60, url_nn:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_89

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_88

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1558
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1560
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1562
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1563
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1564
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2d
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_87
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_88
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2d .. :try_end_2d} :catch_89

    .line 1569
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_2f
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1570
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$46;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$46;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1564
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_87
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2f

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_88
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .end local v7           #e:Ljava/io/IOException;
    :catch_89
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2f

    .line 1565
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1566
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2f

    .line 1567
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1568
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2f

    .line 1574
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v60           #url_nn:Ljava/lang/String;
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x29

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_8d

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090103

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 1578
    .local v63, url_oo:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_8c

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_8b

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1579
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1581
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1583
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1584
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1585
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2e
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2e} :catch_8a
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_8b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_2e} :catch_8c

    .line 1590
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_30
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1591
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$47;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$47;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1585
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_8a
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_30

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_8b
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    .end local v7           #e:Ljava/io/IOException;
    :catch_8c
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_30

    .line 1586
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1587
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_30

    .line 1588
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1589
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_30

    .line 1595
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v63           #url_oo:Ljava/lang/String;
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2a

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_90

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090104

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 1599
    .local v66, url_pp:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_8f

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_8e

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1600
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1602
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1604
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1605
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1606
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_2f
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_2f} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_8e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2f .. :try_end_2f} :catch_8f

    .line 1611
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_31
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1612
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$48;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$48;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1606
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_8d
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_31

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_8e
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .end local v7           #e:Ljava/io/IOException;
    :catch_8f
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_31

    .line 1607
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1608
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_31

    .line 1609
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1610
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_31

    .line 1616
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v66           #url_pp:Ljava/lang/String;
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2b

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_93

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090105

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 1620
    .local v69, url_qq:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_92

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_91

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1621
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1623
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1625
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1626
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1627
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_30
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_30} :catch_90
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_91
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_30 .. :try_end_30} :catch_92

    .line 1632
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_32
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1633
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$49;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$49;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1627
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_90
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_32

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_91
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .end local v7           #e:Ljava/io/IOException;
    :catch_92
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_32

    .line 1628
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1629
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_32

    .line 1630
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1631
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_32

    .line 1637
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v69           #url_qq:Ljava/lang/String;
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2c

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_96

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090106

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 1641
    .local v72, url_rr:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_95

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_94

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1642
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1644
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1646
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1647
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1648
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_31
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_31} :catch_93
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_94
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_31 .. :try_end_31} :catch_95

    .line 1653
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_33
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1654
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$50;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$50;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1648
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_93
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_33

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_94
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    .end local v7           #e:Ljava/io/IOException;
    :catch_95
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_33

    .line 1649
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1650
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_33

    .line 1651
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1652
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_33

    .line 1658
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v72           #url_rr:Ljava/lang/String;
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2d

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_99

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090107

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 1662
    .local v75, url_ss:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_98

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_97

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1663
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1665
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1667
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1668
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1669
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_32
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_32} :catch_96
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_97
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_32 .. :try_end_32} :catch_98

    .line 1674
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_34
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1675
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$51;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$51;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1669
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_96
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_34

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_97
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .end local v7           #e:Ljava/io/IOException;
    :catch_98
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_34

    .line 1670
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1671
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_34

    .line 1672
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1673
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_34

    .line 1679
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v75           #url_ss:Ljava/lang/String;
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2e

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_9c

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090108

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 1683
    .local v78, url_tt:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_9b

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_9a

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1684
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1686
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1688
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1689
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1690
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_33
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_33} :catch_99
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_9a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_33 .. :try_end_33} :catch_9b

    .line 1695
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_35
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1696
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$52;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$52;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1690
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_99
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_9a
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    .end local v7           #e:Ljava/io/IOException;
    :catch_9b
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_35

    .line 1691
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1692
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_35

    .line 1693
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1694
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_35

    .line 1700
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v78           #url_tt:Ljava/lang/String;
    :cond_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x2f

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_9f

    .line 1702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090109

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v81

    .line 1704
    .local v81, url_uu:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_9e

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_9d

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1705
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1707
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1709
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1710
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1711
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_34
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_34} :catch_9c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_9d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_34 .. :try_end_34} :catch_9e

    .line 1716
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_36
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1717
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$53;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$53;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1711
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9c
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_36

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_9d
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_36

    .end local v7           #e:Ljava/io/IOException;
    :catch_9e
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_36

    .line 1712
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1713
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_36

    .line 1714
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1715
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_36

    .line 1721
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v81           #url_uu:Ljava/lang/String;
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x30

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_a2

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09010a

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 1725
    .local v84, url_vv:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_a1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_a0

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1726
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1728
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1730
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1731
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1732
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_35
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_35} :catch_9f
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_a0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_35 .. :try_end_35} :catch_a1

    .line 1737
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_37
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1738
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$54;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$54;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1732
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9f
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_37

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a0
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    .end local v7           #e:Ljava/io/IOException;
    :catch_a1
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_37

    .line 1733
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1734
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_37

    .line 1735
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1736
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_37

    .line 1742
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v84           #url_vv:Ljava/lang/String;
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x31

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_a5

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09010b

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v87

    .line 1746
    .local v87, url_ww:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_a4

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_a3

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1747
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1749
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1751
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1752
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1753
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_36
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_36} :catch_a2
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_a3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_36 .. :try_end_36} :catch_a4

    .line 1758
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_38
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1759
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$55;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$55;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1753
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_a2
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_38

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a3
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .end local v7           #e:Ljava/io/IOException;
    :catch_a4
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_38

    .line 1754
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1755
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_38

    .line 1756
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1757
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_38

    .line 1763
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v87           #url_ww:Ljava/lang/String;
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x32

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_a8

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09010c

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v90

    .line 1767
    .local v90, url_xx:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_a7

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_a6

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1768
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1770
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1772
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1773
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1774
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_37
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_37} :catch_a5
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_a6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_37 .. :try_end_37} :catch_a7

    .line 1779
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_39
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1780
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$56;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$56;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1774
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_a5
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_39

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a6
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .end local v7           #e:Ljava/io/IOException;
    :catch_a7
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_39

    .line 1775
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1776
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_39

    .line 1777
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1778
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_39

    .line 1784
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v90           #url_xx:Ljava/lang/String;
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x33

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_ab

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09010d

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v93

    .line 1788
    .local v93, url_yy:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_aa

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_a9

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1789
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1791
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1793
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1794
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1795
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_38
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_a8
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_a9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_38 .. :try_end_38} :catch_aa

    .line 1800
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_3a
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1801
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$57;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$57;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1795
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_a8
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3a

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a9
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .end local v7           #e:Ljava/io/IOException;
    :catch_aa
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_3a

    .line 1796
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1797
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_3a

    .line 1798
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1799
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_3a

    .line 1805
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v93           #url_yy:Ljava/lang/String;
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x34

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_ae

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09010e

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v96

    .line 1809
    .local v96, url_zz:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_ad

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_ac

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1810
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1812
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1814
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1815
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1816
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_39
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_39} :catch_ab
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_ac
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_39 .. :try_end_39} :catch_ad

    .line 1821
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_3b
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1822
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$58;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$58;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1816
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_ab
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3b

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_ac
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .end local v7           #e:Ljava/io/IOException;
    :catch_ad
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_3b

    .line 1817
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1818
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_3b

    .line 1819
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1820
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_3b

    .line 1826
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v96           #url_zz:Ljava/lang/String;
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x35

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_b1

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09010f

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1830
    .local v21, url_aaa:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_b0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_af

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1831
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1833
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1835
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1836
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1837
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3a
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3a} :catch_ae
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_af
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3a .. :try_end_3a} :catch_b0

    .line 1842
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_3c
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1843
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$59;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$59;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1837
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_ae
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3c

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_af
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    .end local v7           #e:Ljava/io/IOException;
    :catch_b0
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_3c

    .line 1838
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1839
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_3c

    .line 1840
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1841
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_3c

    .line 1847
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v21           #url_aaa:Ljava/lang/String;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x36

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_b4

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090110

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1851
    .local v25, url_bbb:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_b3

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_b2

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1852
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1854
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1856
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1857
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1858
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3b
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3b} :catch_b1
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_b2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3b .. :try_end_3b} :catch_b3

    .line 1863
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_3d
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1864
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$60;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$60;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1858
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_b1
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3d

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_b2
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    .end local v7           #e:Ljava/io/IOException;
    :catch_b3
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_3d

    .line 1859
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1860
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_3d

    .line 1861
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1862
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_3d

    .line 1868
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v25           #url_bbb:Ljava/lang/String;
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x37

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_b7

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090111

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1872
    .local v28, url_ccc:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_b6

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_b5

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1873
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1875
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1877
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1878
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1879
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3c
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3c} :catch_b4
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_b5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3c .. :try_end_3c} :catch_b6

    .line 1884
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_3e
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1885
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$61;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$61;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1879
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_b4
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3e

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_b5
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .end local v7           #e:Ljava/io/IOException;
    :catch_b6
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_3e

    .line 1880
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1881
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_3e

    .line 1882
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1883
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_3e

    .line 1889
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v28           #url_ccc:Ljava/lang/String;
    :cond_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x38

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_ba

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090112

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1893
    .local v31, url_ddd:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_b9

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_b8

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1894
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1896
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1898
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1899
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1900
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3d
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_3d} :catch_b7
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_b8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3d .. :try_end_3d} :catch_b9

    .line 1905
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_3f
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1906
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$62;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$62;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1900
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_b7
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3f

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_b8
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .end local v7           #e:Ljava/io/IOException;
    :catch_b9
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_3f

    .line 1901
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1902
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_3f

    .line 1903
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1904
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_3f

    .line 1910
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v31           #url_ddd:Ljava/lang/String;
    :cond_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x39

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_bd

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090113

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1914
    .local v34, url_eee:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_bc

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_bb

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1915
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1917
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1919
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1920
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1921
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3e
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_3e} :catch_ba
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_bb
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3e .. :try_end_3e} :catch_bc

    .line 1926
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_40
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1927
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$63;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$63;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1921
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_ba
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_40

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_bb
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    .end local v7           #e:Ljava/io/IOException;
    :catch_bc
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_40

    .line 1922
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1923
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_40

    .line 1924
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1925
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_40

    .line 1931
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v34           #url_eee:Ljava/lang/String;
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3a

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_c0

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090114

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1935
    .local v37, url_fff:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_bf

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_be

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1936
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1938
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1940
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1941
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1942
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_3f
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_3f} :catch_bd
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_be
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3f .. :try_end_3f} :catch_bf

    .line 1947
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_41
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1948
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$64;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$64;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1942
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_bd
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_41

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_be
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    .end local v7           #e:Ljava/io/IOException;
    :catch_bf
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_41

    .line 1943
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1944
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_41

    .line 1945
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1946
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_41

    .line 1952
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v37           #url_fff:Ljava/lang/String;
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3b

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_c3

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090115

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1956
    .local v40, url_ggg:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_c2

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_c1

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1957
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1959
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1961
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1962
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1963
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_40
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_40} :catch_c0
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_c1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_40 .. :try_end_40} :catch_c2

    .line 1968
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_42
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1969
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$65;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$65;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1963
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c0
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_42

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_c1
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .end local v7           #e:Ljava/io/IOException;
    :catch_c2
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_42

    .line 1964
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1965
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_42

    .line 1966
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1967
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_42

    .line 1973
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v40           #url_ggg:Ljava/lang/String;
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3c

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_c6

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090116

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1977
    .local v43, url_hhh:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_c5

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_c4

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1978
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 1980
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 1982
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 1983
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1984
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_41
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_41} :catch_c3
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_c4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_41 .. :try_end_41} :catch_c5

    .line 1989
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_43
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1990
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$66;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$66;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 1984
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c3
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_43

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_c4
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .end local v7           #e:Ljava/io/IOException;
    :catch_c5
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_43

    .line 1985
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1986
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_43

    .line 1987
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1988
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_43

    .line 1994
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v43           #url_hhh:Ljava/lang/String;
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3d

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_c9

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090117

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 1998
    .local v46, url_iii:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_c8

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_c7

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 1999
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2001
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2003
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2004
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2005
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_42
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_42} :catch_c6
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_c7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_42 .. :try_end_42} :catch_c8

    .line 2010
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_44
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2011
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$67;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$67;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2005
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c6
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_44

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_c7
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .end local v7           #e:Ljava/io/IOException;
    :catch_c8
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_44

    .line 2006
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2007
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_44

    .line 2008
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2009
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_44

    .line 2015
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v46           #url_iii:Ljava/lang/String;
    :cond_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3e

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_cc

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090118

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 2019
    .local v49, url_jjj:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_cb

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_ca

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2020
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2022
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2024
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2025
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2026
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_43
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_43} :catch_c9
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_ca
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_43 .. :try_end_43} :catch_cb

    .line 2031
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_45
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2032
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$68;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$68;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2026
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c9
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_45

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_ca
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .end local v7           #e:Ljava/io/IOException;
    :catch_cb
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_45

    .line 2027
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2028
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_45

    .line 2029
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2030
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_45

    .line 2036
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v49           #url_jjj:Ljava/lang/String;
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x3f

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_cf

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090119

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 2040
    .local v52, url_kkk:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_ce

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_cd

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2041
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2043
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2045
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2046
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2047
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_44
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_44} :catch_cc
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_cd
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_44 .. :try_end_44} :catch_ce

    .line 2052
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_46
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2053
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$69;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$69;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2047
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_cc
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_46

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_cd
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .end local v7           #e:Ljava/io/IOException;
    :catch_ce
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_46

    .line 2048
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2049
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_46

    .line 2050
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2051
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_46

    .line 2057
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v52           #url_kkk:Ljava/lang/String;
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x40

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_d2

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09011a

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 2061
    .local v55, url_lll:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_d1

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_d0

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2062
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2064
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2066
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2067
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2068
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_45
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_45} :catch_cf
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_d0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_45 .. :try_end_45} :catch_d1

    .line 2073
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_47
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2074
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$70;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$70;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2068
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_cf
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_47

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d0
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    .end local v7           #e:Ljava/io/IOException;
    :catch_d1
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_47

    .line 2069
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2070
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_47

    .line 2071
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2072
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_47

    .line 2078
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v55           #url_lll:Ljava/lang/String;
    :cond_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x41

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_d5

    .line 2080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09011b

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 2082
    .local v58, url_mmm:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_d4

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_d3

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2083
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2085
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2087
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2088
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2089
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_46
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_46} :catch_d2
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_d3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_46 .. :try_end_46} :catch_d4

    .line 2094
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_48
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2095
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$71;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$71;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2089
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_d2
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_48

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d3
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .end local v7           #e:Ljava/io/IOException;
    :catch_d4
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_48

    .line 2090
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2091
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_48

    .line 2092
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2093
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_48

    .line 2099
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v58           #url_mmm:Ljava/lang/String;
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x42

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_d8

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09011c

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 2103
    .local v61, url_nnn:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_d7

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_d6

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2104
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2106
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2108
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2109
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2110
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_47
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_47} :catch_d5
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_d6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_47 .. :try_end_47} :catch_d7

    .line 2115
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_49
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2116
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$72;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$72;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2110
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_d5
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_49

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d6
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .end local v7           #e:Ljava/io/IOException;
    :catch_d7
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_49

    .line 2111
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2112
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_49

    .line 2113
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2114
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_49

    .line 2120
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v61           #url_nnn:Ljava/lang/String;
    :cond_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x43

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_db

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09011d

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v64

    .line 2124
    .local v64, url_ooo:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_da

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_d9

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2125
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2127
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2129
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2130
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2131
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_48
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_48} :catch_d8
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_d9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_48 .. :try_end_48} :catch_da

    .line 2136
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4a
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2137
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$73;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$73;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2131
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_d8
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4a

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d9
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .end local v7           #e:Ljava/io/IOException;
    :catch_da
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4a

    .line 2132
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2133
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4a

    .line 2134
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2135
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4a

    .line 2141
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v64           #url_ooo:Ljava/lang/String;
    :cond_db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x44

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_de

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09011e

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 2145
    .local v67, url_ppp:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_dd

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_dc

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2146
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2148
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2150
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2151
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2152
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_49
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_49} :catch_db
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_dc
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_49 .. :try_end_49} :catch_dd

    .line 2157
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4b
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2158
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$74;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$74;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2152
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_db
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4b

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_dc
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .end local v7           #e:Ljava/io/IOException;
    :catch_dd
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4b

    .line 2153
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2154
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4b

    .line 2155
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2156
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4b

    .line 2162
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v67           #url_ppp:Ljava/lang/String;
    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x45

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_e1

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f09011f

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 2166
    .local v70, url_qqq:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_e0

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_df

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2167
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2169
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2171
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2172
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2173
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4a
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4a} :catch_de
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4a} :catch_df
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4a .. :try_end_4a} :catch_e0

    .line 2178
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4c
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2179
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$75;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$75;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2173
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_de
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4c

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_df
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .end local v7           #e:Ljava/io/IOException;
    :catch_e0
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4c

    .line 2174
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2175
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4c

    .line 2176
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2177
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4c

    .line 2183
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v70           #url_qqq:Ljava/lang/String;
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x46

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_e4

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090120

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 2187
    .local v73, url_rrr:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_e3

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_e2

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2188
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2190
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2192
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2193
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2194
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4b
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4b} :catch_e1
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_e2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4b .. :try_end_4b} :catch_e3

    .line 2199
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4d
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2200
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$76;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$76;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2194
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_e1
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4d

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_e2
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .end local v7           #e:Ljava/io/IOException;
    :catch_e3
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4d

    .line 2195
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2196
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4d

    .line 2197
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2198
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4d

    .line 2204
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v73           #url_rrr:Ljava/lang/String;
    :cond_e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x47

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_e7

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090121

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 2208
    .local v76, url_sss:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_e6

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_e5

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2209
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2211
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2213
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2214
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2215
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4c
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4c} :catch_e4
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_e5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4c .. :try_end_4c} :catch_e6

    .line 2220
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4e
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2221
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$77;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$77;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2215
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_e4
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4e

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_e5
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .end local v7           #e:Ljava/io/IOException;
    :catch_e6
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4e

    .line 2216
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2217
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4e

    .line 2218
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2219
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4e

    .line 2225
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v76           #url_sss:Ljava/lang/String;
    :cond_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x48

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_ea

    .line 2227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090122

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 2229
    .local v79, url_ttt:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_e9

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_e8

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2230
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2232
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2234
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2235
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2236
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4d
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_4d} :catch_e7
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_e8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4d .. :try_end_4d} :catch_e9

    .line 2241
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_4f
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2242
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$78;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$78;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2236
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_e7
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4f

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_e8
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .end local v7           #e:Ljava/io/IOException;
    :catch_e9
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_4f

    .line 2237
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2238
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_4f

    .line 2239
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2240
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_4f

    .line 2246
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v79           #url_ttt:Ljava/lang/String;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x49

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_ed

    .line 2248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090123

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v82

    .line 2250
    .local v82, url_uuu:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_ec

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_eb

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2251
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2253
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2255
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2256
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2257
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4e
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4e .. :try_end_4e} :catch_ea
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_eb
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4e .. :try_end_4e} :catch_ec

    .line 2262
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_50
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2263
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$79;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$79;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2257
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_ea
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_50

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_eb
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    .end local v7           #e:Ljava/io/IOException;
    :catch_ec
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_50

    .line 2258
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2259
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_50

    .line 2260
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2261
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_50

    .line 2267
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v82           #url_uuu:Ljava/lang/String;
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4a

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_f0

    .line 2269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090124

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v85

    .line 2271
    .local v85, url_vvv:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_ef

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_ee

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2272
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2274
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2276
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2277
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2278
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_4f
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_4f} :catch_ed
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_ee
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4f .. :try_end_4f} :catch_ef

    .line 2283
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_51
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2284
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$80;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$80;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2278
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_ed
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_51

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_ee
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .end local v7           #e:Ljava/io/IOException;
    :catch_ef
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_51

    .line 2279
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2280
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_51

    .line 2281
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2282
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_51

    .line 2288
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v85           #url_vvv:Ljava/lang/String;
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4b

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_f3

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090125

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v88

    .line 2292
    .local v88, url_www:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_f2

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_f1

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2293
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2295
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2297
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2298
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2299
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_50
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_50} :catch_f0
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_f1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_50 .. :try_end_50} :catch_f2

    .line 2304
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_52
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2305
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$81;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$81;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2299
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f0
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_52

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_f1
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .end local v7           #e:Ljava/io/IOException;
    :catch_f2
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_52

    .line 2300
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2301
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_52

    .line 2302
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2303
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_52

    .line 2309
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v88           #url_www:Ljava/lang/String;
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4c

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_f6

    .line 2311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090126

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v91

    .line 2313
    .local v91, url_xxx:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_f5

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_f4

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2314
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2316
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2318
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2319
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2320
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_51
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_51} :catch_f3
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_f4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_51 .. :try_end_51} :catch_f5

    .line 2325
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_53
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2326
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$82;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$82;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2320
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f3
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_53

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_f4
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .end local v7           #e:Ljava/io/IOException;
    :catch_f5
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_53

    .line 2321
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2322
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_53

    .line 2323
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2324
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_53

    .line 2330
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v91           #url_xxx:Ljava/lang/String;
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4d

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_f9

    .line 2332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090127

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v94

    .line 2334
    .local v94, url_yyy:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_f8

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_f7

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2335
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2337
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2339
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2340
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2341
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_52
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_52} :catch_f6
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_52} :catch_f7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_52 .. :try_end_52} :catch_f8

    .line 2346
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_54
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2347
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$83;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$83;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2341
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f6
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_54

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_f7
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    .end local v7           #e:Ljava/io/IOException;
    :catch_f8
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_54

    .line 2342
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2343
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_54

    .line 2344
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2345
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_54

    .line 2351
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v94           #url_yyy:Ljava/lang/String;
    :cond_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4e

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_fc

    .line 2353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090128

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v97

    .line 2355
    .local v97, url_zzz:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_fb

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_fa

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2356
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2358
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2360
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2361
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2362
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_53
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_53} :catch_f9
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_fa
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_53 .. :try_end_53} :catch_fb

    .line 2367
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_55
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2368
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$84;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$84;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2362
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f9
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_55

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_fa
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    .end local v7           #e:Ljava/io/IOException;
    :catch_fb
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_55

    .line 2363
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2364
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_55

    .line 2365
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2366
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_55

    .line 2372
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .end local v97           #url_zzz:Ljava/lang/String;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    move-object/from16 v0, v98

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    move/from16 v98, v0

    const/16 v99, 0x4f

    move/from16 v0, v98

    move/from16 v1, v99

    if-ne v0, v1, :cond_1

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    const v99, 0x7f090129

    invoke-virtual/range {v98 .. v99}, Lcom/androguide/pimp/my/rom/ToolsGPS;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2376
    .local v22, url_aaaa:Ljava/lang/String;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v98

    if-eqz v98, :cond_fe

    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v98

    if-eqz v98, :cond_fd

    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/16 v98, 0x0

    const/16 v99, 0x6

    move/from16 v0, v99

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v99, v0

    const/16 v100, 0x0

    .line 2377
    const-string v101, "busybox mount -o rw,remount /system"

    aput-object v101, v99, v100

    const/16 v100, 0x1

    const-string v101, "cd /system/etc"

    aput-object v101, v99, v100

    const/16 v100, 0x2

    const-string v101, "rm -f gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x3

    .line 2379
    new-instance v101, Ljava/lang/StringBuilder;

    const-string v102, "wget "

    invoke-direct/range {v101 .. v102}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v101

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v101

    aput-object v101, v99, v100

    const/16 v100, 0x4

    .line 2381
    const-string v101, "chmod 0644 gps.conf"

    aput-object v101, v99, v100

    const/16 v100, 0x5

    .line 2382
    const-string v101, "busybox mount -o ro,remount /system"

    aput-object v101, v99, v100

    move/from16 v0, v98

    move-object/from16 v1, v99

    invoke-direct {v3, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2383
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v98, 0x1

    :try_start_54
    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_54} :catch_fc
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_54} :catch_fd
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_54 .. :try_end_54} :catch_fe

    .line 2388
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_56
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    move-object/from16 v0, v98

    invoke-direct {v5, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .restart local v5       #dialog:Landroid/app/Dialog;
    const v98, 0x7f030017

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    const-string v98, "Please Wait"

    move-object/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v98, 0x7f040033

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .restart local v10       #text:Landroid/widget/TextView;
    const-string v98, "   Downloading & Installing GPS.Conf file..."

    move-object/from16 v0, v98

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v98, 0x7f040034

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .restart local v8       #spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2389
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .restart local v9       #t:Ljava/util/Timer;
    new-instance v98, Lcom/androguide/pimp/my/rom/ToolsGPS$3$85;

    move-object/from16 v0, v98

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsGPS$3$85;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    const-wide/16 v99, 0x1388

    move-object/from16 v0, v98

    move-wide/from16 v1, v99

    invoke-virtual {v9, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_3

    .line 2383
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_fc
    move-exception v7

    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_56

    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_fd
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .end local v7           #e:Ljava/io/IOException;
    :catch_fe
    move-exception v7

    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_56

    .line 2384
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2385
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_56

    .line 2386
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-virtual/range {v98 .. v98}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2387
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    move-object/from16 v98, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v98 .. v98}, Lcom/androguide/pimp/my/rom/ToolsGPS;->access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v98

    invoke-static/range {v98 .. v98}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_56
.end method
