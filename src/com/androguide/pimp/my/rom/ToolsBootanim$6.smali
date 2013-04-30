.class Lcom/androguide/pimp/my/rom/ToolsBootanim$6;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim$6;)Lcom/androguide/pimp/my/rom/ToolsBootanim;
    .locals 1
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26
    .parameter "v"

    .prologue
    .line 456
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 459
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 463
    .local v4, SDC:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 466
    new-instance v7, Lcom/stericson/RootTools/CommandCapture;

    const/16 v21, 0x0

    const/16 v22, 0xc

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 467
    const-string v24, "busybox mount -o rw,remount /system"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 469
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "if [ -e "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/PimpMyRom/anim.zip ];"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    .line 470
    const-string v24, "then"

    aput-object v24, v22, v23

    const/16 v23, 0x3

    .line 472
    const-string v24, "busybox rm -f /system/media/bootanimations/1.zip"

    aput-object v24, v22, v23

    const/16 v23, 0x4

    .line 473
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "busybox mv -f "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/PimpMyRom/anim.zip /system/media/bootanimations/1.zip"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    .line 474
    const-string v24, "chmod 755 /system/media/bootanimations/"

    aput-object v24, v22, v23

    const/16 v23, 0x6

    .line 475
    const-string v24, "chmod 644 /system/media/bootanimations/*"

    aput-object v24, v22, v23

    const/16 v23, 0x7

    .line 476
    const-string v24, "chmod 777 /system/etc/init.d/04dual_bootanim"

    aput-object v24, v22, v23

    const/16 v23, 0x8

    .line 478
    const-string v24, "else"

    aput-object v24, v22, v23

    const/16 v23, 0x9

    .line 479
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "echo \"fail\" >> "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/PimpMyRom/tmp-anim.txt"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xa

    .line 480
    const-string v24, "fi;"

    aput-object v24, v22, v23

    const/16 v23, 0xb

    .line 482
    const-string v24, "busybox mount -o ro,remount /system"

    .line 466
    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 487
    .local v7, command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v21, 0x1

    :try_start_0
    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 500
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 501
    .local v3, FAIL:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 503
    new-instance v13, Ljava/io/File;

    const-string v21, "/PimpMyRom/tmp-anim.txt"

    move-object/from16 v0, v21

    invoke-direct {v13, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 506
    .local v13, fileTest:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 509
    .local v9, context:Landroid/content/Context;
    const-string v19, "Setting the 2nd Boot-Animation has Failed ! Download a Boot-Animation first !"

    .line 510
    .local v19, txt:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    .line 511
    .local v11, duration:I
    move-object/from16 v0, v19

    invoke-static {v9, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 512
    .local v17, toast:Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 514
    new-instance v8, Lcom/stericson/RootTools/CommandCapture;

    const/16 v21, 0x0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    .line 515
    const-string v24, "busybox mount -o rw,remount /system"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    .line 516
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "busybox rm -f "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/PimpMyRom/tmp-anim.txt"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    .line 517
    const-string v24, "busybox mount -o ro,remount /system"

    .line 514
    aput-object v24, v22, v23

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v8, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 521
    .local v8, command2:Lcom/stericson/RootTools/CommandCapture;
    const/16 v21, 0x1

    :try_start_1
    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 625
    .end local v3           #FAIL:Ljava/io/File;
    .end local v4           #SDC:Ljava/io/File;
    .end local v7           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v13           #fileTest:Ljava/io/File;
    .end local v17           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 488
    .end local v9           #context:Landroid/content/Context;
    .end local v11           #duration:I
    .end local v19           #txt:Ljava/lang/CharSequence;
    .restart local v4       #SDC:Ljava/io/File;
    .restart local v7       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v12

    .line 490
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 491
    .end local v12           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v12

    .line 493
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 494
    .end local v12           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    .line 496
    .local v12, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v12}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 522
    .end local v12           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v3       #FAIL:Ljava/io/File;
    .restart local v8       #command2:Lcom/stericson/RootTools/CommandCapture;
    .restart local v9       #context:Landroid/content/Context;
    .restart local v11       #duration:I
    .restart local v13       #fileTest:Ljava/io/File;
    .restart local v17       #toast:Landroid/widget/Toast;
    .restart local v19       #txt:Ljava/lang/CharSequence;
    :catch_3
    move-exception v12

    .line 524
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 525
    .end local v12           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v12

    .line 527
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 528
    .end local v12           #e:Ljava/io/IOException;
    :catch_5
    move-exception v12

    .line 530
    .local v12, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v12}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    .line 537
    .end local v8           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v9           #context:Landroid/content/Context;
    .end local v11           #duration:I
    .end local v12           #e:Ljava/util/concurrent/TimeoutException;
    .end local v17           #toast:Landroid/widget/Toast;
    .end local v19           #txt:Ljava/lang/CharSequence;
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    .local v6, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v21, "Reboot Now ?"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 540
    const-string v21, "Reboot needed to apply new changes, do you want to reboot now ?"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    .line 541
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    .line 542
    const-string v22, "Yes, Reboot !"

    new-instance v23, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$6;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v21

    .line 551
    const-string v22, "No, keep Pimpin\' !"

    new-instance v23, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$6;)V

    invoke-virtual/range {v21 .. v23}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 554
    .local v5, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 559
    new-instance v10, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 560
    .local v10, dialog:Landroid/app/Dialog;
    const v21, 0x7f030017

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 561
    const-string v21, "Please Wait"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 564
    const v21, 0x7f040033

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 565
    .local v16, text:Landroid/widget/TextView;
    const-string v21, "Setting previously downloaded boot-animation to 2nd slot..."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    const v21, 0x7f040034

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ProgressBar;

    .line 569
    .local v14, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 571
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 572
    .local v15, t:Ljava/util/Timer;
    new-instance v21, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v15}, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$6;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 577
    const-wide/16 v22, 0x9c4

    .line 572
    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 581
    .restart local v9       #context:Landroid/content/Context;
    const-string v19, "Done ! Remember that the Dual Boot-Animation feature will not be active before the 3rd reboot from now !"

    .line 582
    .restart local v19       #txt:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    .line 583
    .restart local v11       #duration:I
    move-object/from16 v0, v19

    invoke-static {v9, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 585
    .local v18, toast0:Landroid/widget/Toast;
    new-instance v20, Ljava/util/Timer;

    invoke-direct/range {v20 .. v20}, Ljava/util/Timer;-><init>()V

    .line 586
    .local v20, w:Ljava/util/Timer;
    new-instance v21, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v10, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim$6$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$6;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 591
    const-wide/16 v22, 0x9c4

    .line 586
    invoke-virtual/range {v20 .. v23}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 593
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 601
    .end local v3           #FAIL:Ljava/io/File;
    .end local v4           #SDC:Ljava/io/File;
    .end local v5           #alertDialog:Landroid/app/AlertDialog;
    .end local v6           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v7           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #dialog:Landroid/app/Dialog;
    .end local v11           #duration:I
    .end local v13           #fileTest:Ljava/io/File;
    .end local v14           #spin:Landroid/widget/ProgressBar;
    .end local v15           #t:Ljava/util/Timer;
    .end local v16           #text:Landroid/widget/TextView;
    .end local v18           #toast0:Landroid/widget/Toast;
    .end local v19           #txt:Ljava/lang/CharSequence;
    .end local v20           #w:Ljava/util/Timer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 602
    .restart local v9       #context:Landroid/content/Context;
    const-string v19, "Do you have root permissions ?"

    .line 603
    .restart local v19       #txt:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    .line 604
    .restart local v11       #duration:I
    move-object/from16 v0, v19

    invoke-static {v9, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 605
    .restart local v17       #toast:Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 613
    .end local v9           #context:Landroid/content/Context;
    .end local v11           #duration:I
    .end local v17           #toast:Landroid/widget/Toast;
    .end local v19           #txt:Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 614
    .restart local v9       #context:Landroid/content/Context;
    const-string v19, "Busybox not found ! Please install it !"

    .line 615
    .restart local v19       #txt:Ljava/lang/CharSequence;
    const/4 v11, 0x1

    .line 616
    .restart local v11       #duration:I
    move-object/from16 v0, v19

    invoke-static {v9, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 617
    .restart local v17       #toast:Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v21, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v21 .. v21}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
