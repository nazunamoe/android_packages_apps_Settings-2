.class Lcom/androguide/pimp/my/rom/TweaksDalvik$3;
.super Ljava/lang/Object;
.source "TweaksDalvik.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksDalvik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 1375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik$3;)Lcom/androguide/pimp/my/rom/TweaksDalvik;
    .locals 1
    .parameter

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 1381
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1384
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1387
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1388
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1389
    const-string v16, "sed -i \'/vm.dexopt-flags=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1390
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "echo \"dalvik.vm.dexopt-flags="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->verif:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->opti:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->map:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" >> /system/build.prop"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1391
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1392
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "setprop dalvik.vm.dexopt-flags "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->verif:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->opti:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->map:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1393
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1387
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1398
    .local v3, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_0
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1437
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1438
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1440
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1441
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1442
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksDalvik$3$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$3$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik$3;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1451
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksDalvik$3$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$3$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik$3;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1453
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1454
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1459
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1460
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 1461
    const-string v13, "Please Wait..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1464
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1465
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Applying Selected Tweaks..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1469
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1471
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 1472
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/TweaksDalvik$3$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/TweaksDalvik$3$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik$3;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1477
    const-wide/16 v14, 0x898

    .line 1472
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1480
    return-void

    .line 1399
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 1401
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1402
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 1404
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1405
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 1407
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 1414
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1415
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 1416
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1417
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1418
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1426
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1427
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 1428
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1429
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1430
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
