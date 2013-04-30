.class Lcom/androguide/pimp/my/rom/ToolsBootanim$7;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim$7;)Lcom/androguide/pimp/my/rom/ToolsBootanim;
    .locals 1
    .parameter

    .prologue
    .line 631
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 27
    .parameter "v"

    .prologue
    .line 637
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 640
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 643
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 644
    .local v5, SDC:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 647
    new-instance v8, Lcom/stericson/RootTools/CommandCapture;

    const/16 v22, 0x0

    const/16 v23, 0x12

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 649
    const-string v25, "busybox mount -o rw,remount /system"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 650
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "if [ -e "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/anim.zip ];"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 651
    const-string v25, "then"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    .line 652
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "if [ -e "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/bootanimation-backup.zip ];"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x4

    .line 653
    const-string v25, "then"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    .line 654
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "echo \"already backed up original bootanimation\" >> "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/tmp-backup-fail.txt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x6

    .line 655
    const-string v25, "else"

    aput-object v25, v23, v24

    const/16 v24, 0x7

    .line 656
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "busybox cp -f /system/media/bootanimation.zip "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/bootanimation-backup.zip"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x8

    .line 657
    const-string v25, "busybox rm -f /system/media/bootanimation.zip"

    aput-object v25, v23, v24

    const/16 v24, 0x9

    .line 658
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "busybox mv -f "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/anim.zip /system/media/bootanimation.zip"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0xa

    .line 659
    const-string v25, "chmod 644 /system/media/bootanimation.zip"

    aput-object v25, v23, v24

    const/16 v24, 0xb

    .line 660
    const-string v25, "chmod 755 /system/media/bootanimations"

    aput-object v25, v23, v24

    const/16 v24, 0xc

    .line 661
    const-string v25, "chmod 777 /system/etc/init.d/04dual_bootanim"

    aput-object v25, v23, v24

    const/16 v24, 0xd

    .line 662
    const-string v25, "fi;"

    aput-object v25, v23, v24

    const/16 v24, 0xe

    .line 663
    const-string v25, "else"

    aput-object v25, v23, v24

    const/16 v24, 0xf

    .line 664
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "echo \"no downloaded animation found\" >> "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/tmp-backup-fail.txt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x10

    .line 665
    const-string v25, "fi;"

    aput-object v25, v23, v24

    const/16 v24, 0x11

    .line 667
    const-string v25, "busybox mount -o ro,remount /system"

    .line 647
    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 672
    .local v8, command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v22, 0x1

    :try_start_0
    invoke-static/range {v22 .. v22}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 685
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 686
    .local v4, FAIL:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 688
    new-instance v14, Ljava/io/File;

    const-string v22, "/PimpMyRom/tmp-backup-fail.txt"

    move-object/from16 v0, v22

    invoke-direct {v14, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 691
    .local v14, fileTest:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 694
    .local v10, context:Landroid/content/Context;
    const-string v20, "Replacing the 1st bootanimation failed ! Download a Boot-Animation first !"

    .line 695
    .local v20, txt:Ljava/lang/CharSequence;
    const/4 v12, 0x1

    .line 696
    .local v12, duration:I
    move-object/from16 v0, v20

    invoke-static {v10, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 697
    .local v18, toast:Landroid/widget/Toast;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 699
    new-instance v9, Lcom/stericson/RootTools/CommandCapture;

    const/16 v22, 0x0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 700
    const-string v25, "busybox mount -o rw,remount /system"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    .line 701
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "busybox rm -f "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/PimpMyRom/tmp-backup-fail.txt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    .line 702
    const-string v25, "busybox mount -o ro,remount /system"

    .line 699
    aput-object v25, v23, v24

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 706
    .local v9, command2:Lcom/stericson/RootTools/CommandCapture;
    const/16 v22, 0x1

    :try_start_1
    invoke-static/range {v22 .. v22}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 808
    .end local v4           #FAIL:Ljava/io/File;
    .end local v5           #SDC:Ljava/io/File;
    .end local v8           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v9           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v14           #fileTest:Ljava/io/File;
    .end local v18           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 673
    .end local v10           #context:Landroid/content/Context;
    .end local v12           #duration:I
    .end local v20           #txt:Ljava/lang/CharSequence;
    .restart local v5       #SDC:Ljava/io/File;
    .restart local v8       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v13

    .line 675
    .local v13, e:Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 676
    .end local v13           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v13

    .line 678
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 679
    .end local v13           #e:Ljava/io/IOException;
    :catch_2
    move-exception v13

    .line 681
    .local v13, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v13}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 707
    .end local v13           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v4       #FAIL:Ljava/io/File;
    .restart local v9       #command2:Lcom/stericson/RootTools/CommandCapture;
    .restart local v10       #context:Landroid/content/Context;
    .restart local v12       #duration:I
    .restart local v14       #fileTest:Ljava/io/File;
    .restart local v18       #toast:Landroid/widget/Toast;
    .restart local v20       #txt:Ljava/lang/CharSequence;
    :catch_3
    move-exception v13

    .line 709
    .local v13, e:Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v13           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v13

    .line 712
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 713
    .end local v13           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 715
    .local v13, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v13}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    .line 720
    .end local v9           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v10           #context:Landroid/content/Context;
    .end local v12           #duration:I
    .end local v13           #e:Ljava/util/concurrent/TimeoutException;
    .end local v18           #toast:Landroid/widget/Toast;
    .end local v20           #txt:Ljava/lang/CharSequence;
    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v7, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v22, "Reboot Now ?"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 723
    const-string v22, "Reboot needed to apply new changes, do you want to reboot now ?"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    .line 724
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    .line 725
    const-string v23, "Yes, Reboot !"

    new-instance v24, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$7;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v22

    .line 734
    const-string v23, "No, keep Pimpin\' !"

    new-instance v24, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$7;)V

    invoke-virtual/range {v22 .. v24}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 737
    .local v6, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 742
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 743
    .local v11, dialog:Landroid/app/Dialog;
    const v22, 0x7f030017

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 744
    const-string v22, "Please Wait"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 747
    const v22, 0x7f040033

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 748
    .local v17, text:Landroid/widget/TextView;
    const-string v22, "Setting Downloaded Boot-Animation to 1st slot..."

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    const v22, 0x7f040034

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ProgressBar;

    .line 752
    .local v15, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 754
    new-instance v16, Ljava/util/Timer;

    invoke-direct/range {v16 .. v16}, Ljava/util/Timer;-><init>()V

    .line 755
    .local v16, t:Ljava/util/Timer;
    new-instance v22, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$7;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 760
    const-wide/16 v23, 0x1194

    .line 755
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 764
    .restart local v10       #context:Landroid/content/Context;
    const-string v20, "Done ! Remember that the Dual Boot-Animation feature will not be active before the 3rd reboot from now !"

    .line 765
    .restart local v20       #txt:Ljava/lang/CharSequence;
    const/4 v12, 0x1

    .line 766
    .restart local v12       #duration:I
    move-object/from16 v0, v20

    invoke-static {v10, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    .line 769
    .local v19, toast1:Landroid/widget/Toast;
    new-instance v21, Ljava/util/Timer;

    invoke-direct/range {v21 .. v21}, Ljava/util/Timer;-><init>()V

    .line 770
    .local v21, u:Ljava/util/Timer;
    new-instance v22, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$7;Landroid/widget/Toast;Ljava/util/Timer;)V

    .line 775
    const-wide/16 v23, 0x1194

    .line 770
    invoke-virtual/range {v21 .. v24}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 784
    .end local v4           #FAIL:Ljava/io/File;
    .end local v5           #SDC:Ljava/io/File;
    .end local v6           #alertDialog:Landroid/app/AlertDialog;
    .end local v7           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v8           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v10           #context:Landroid/content/Context;
    .end local v11           #dialog:Landroid/app/Dialog;
    .end local v12           #duration:I
    .end local v14           #fileTest:Ljava/io/File;
    .end local v15           #spin:Landroid/widget/ProgressBar;
    .end local v16           #t:Ljava/util/Timer;
    .end local v17           #text:Landroid/widget/TextView;
    .end local v19           #toast1:Landroid/widget/Toast;
    .end local v20           #txt:Ljava/lang/CharSequence;
    .end local v21           #u:Ljava/util/Timer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 785
    .restart local v10       #context:Landroid/content/Context;
    const-string v20, "Do you have root permissions ?"

    .line 786
    .restart local v20       #txt:Ljava/lang/CharSequence;
    const/4 v12, 0x1

    .line 787
    .restart local v12       #duration:I
    move-object/from16 v0, v20

    invoke-static {v10, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 788
    .restart local v18       #toast:Landroid/widget/Toast;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 796
    .end local v10           #context:Landroid/content/Context;
    .end local v12           #duration:I
    .end local v18           #toast:Landroid/widget/Toast;
    .end local v20           #txt:Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 797
    .restart local v10       #context:Landroid/content/Context;
    const-string v20, "Busybox not found ! Please install it !"

    .line 798
    .restart local v20       #txt:Ljava/lang/CharSequence;
    const/4 v12, 0x1

    .line 799
    .restart local v12       #duration:I
    move-object/from16 v0, v20

    invoke-static {v10, v0, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    .line 800
    .restart local v18       #toast:Landroid/widget/Toast;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v22, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v22 .. v22}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
