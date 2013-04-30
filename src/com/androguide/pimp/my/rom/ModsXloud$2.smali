.class Lcom/androguide/pimp/my/rom/ModsXloud$2;
.super Ljava/lang/Object;
.source "ModsXloud.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ModsXloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ModsXloud;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ModsXloud;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ModsXloud$2;)Lcom/androguide/pimp/my/rom/ModsXloud;
    .locals 1
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "v"

    .prologue
    .line 348
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 351
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 354
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 355
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 356
    const-string v18, "rm -f /system/app/AudioEffectService.apk"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 357
    const-string v18, "rm -f /system/etc/permissions/com.sonyericsson.audioeffectif.xml"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 358
    const-string v18, "rm -f /system/framework/semc_audioeffectif.jar"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 359
    const-string v18, "rm -f /system/lib/libaudioeffect_jni.so"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    .line 360
    const-string v18, "rm -f /system/lib/soundfx/libxloudwrapper.so"

    aput-object v18, v16, v17

    const/16 v17, 0x6

    .line 361
    const-string v18, "busybox mount -o ro,remount /system"

    .line 354
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 366
    .local v4, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_0
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 405
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v3, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v15, "Reboot Now ?"

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    const-string v15, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 409
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 410
    const-string v16, "Yes, Reboot !"

    new-instance v17, Lcom/androguide/pimp/my/rom/ModsXloud$2$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ModsXloud$2$1;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud$2;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 419
    const-string v16, "No, keep Pimpin\' !"

    new-instance v17, Lcom/androguide/pimp/my/rom/ModsXloud$2$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ModsXloud$2$2;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud$2;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 422
    .local v2, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 426
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-direct {v6, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 427
    .local v6, dialog:Landroid/app/Dialog;
    const v15, 0x7f030017

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->setContentView(I)V

    .line 428
    const-string v15, "Un-Pimpin\'..."

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    const v15, 0x7f040033

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 432
    .local v11, text:Landroid/widget/TextView;
    const-string v15, "Uninstalling xLoud..."

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    const v15, 0x7f040034

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    .line 436
    .local v9, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 438
    new-instance v10, Ljava/util/Timer;

    invoke-direct {v10}, Ljava/util/Timer;-><init>()V

    .line 439
    .local v10, t:Ljava/util/Timer;
    new-instance v15, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6, v10}, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud$2;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 444
    const-wide/16 v16, 0x9c4

    .line 439
    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 448
    .local v5, context:Landroid/content/Context;
    const-string v13, "Reboot Required !"

    .line 449
    .local v13, txt:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .line 450
    .local v7, duration:I
    invoke-static {v5, v13, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 452
    .local v12, toast:Landroid/widget/Toast;
    new-instance v14, Ljava/util/Timer;

    invoke-direct {v14}, Ljava/util/Timer;-><init>()V

    .line 453
    .local v14, u:Ljava/util/Timer;
    new-instance v15, Lcom/androguide/pimp/my/rom/ModsXloud$2$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v14}, Lcom/androguide/pimp/my/rom/ModsXloud$2$4;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud$2;Landroid/widget/Toast;Ljava/util/Timer;)V

    .line 459
    const-wide/16 v16, 0x9c4

    .line 453
    invoke-virtual/range {v14 .. v17}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 462
    return-void

    .line 367
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    .end local v3           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #dialog:Landroid/app/Dialog;
    .end local v7           #duration:I
    .end local v9           #spin:Landroid/widget/ProgressBar;
    .end local v10           #t:Ljava/util/Timer;
    .end local v11           #text:Landroid/widget/TextView;
    .end local v12           #toast:Landroid/widget/Toast;
    .end local v13           #txt:Ljava/lang/CharSequence;
    .end local v14           #u:Ljava/util/Timer;
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v8

    .line 369
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 370
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 372
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 373
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 375
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 382
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 383
    .restart local v5       #context:Landroid/content/Context;
    const-string v13, "Do you have root permissions ?"

    .line 384
    .restart local v13       #txt:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .line 385
    .restart local v7       #duration:I
    invoke-static {v5, v13, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 386
    .restart local v12       #toast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 394
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #duration:I
    .end local v12           #toast:Landroid/widget/Toast;
    .end local v13           #txt:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 395
    .restart local v5       #context:Landroid/content/Context;
    const-string v13, "Busybox not found ! Please install it !"

    .line 396
    .restart local v13       #txt:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .line 397
    .restart local v7       #duration:I
    invoke-static {v5, v13, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 398
    .restart local v12       #toast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 400
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
