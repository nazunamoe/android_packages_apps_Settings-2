.class Lcom/androguide/pimp/my/rom/ToolsBootanim$8;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 25
    .parameter "v"

    .prologue
    .line 824
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 827
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 831
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 832
    .local v5, SDC:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 835
    new-instance v6, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0xc

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 837
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 839
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "if [ -e "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/PimpMyRom/bootanimation-backup.zip ];"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 840
    const-string v23, "then"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 841
    const-string v23, "busybox rm -f /system/media/bootanimation.zip"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 842
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "busybox cp -f "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/PimpMyRom/bootanimation-backup.zip /system/media/bootanimation.zip"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 843
    const-string v23, "chmod 644 /system/media/bootanimation.zip"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 844
    const-string v23, "chmod 755 /system/media/bootanimations"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 845
    const-string v23, "chmod 777 /system/etc/init.d/04dual_bootanim"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 846
    const-string v23, "else"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 847
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "echo \"no boot-animation backup was found\" >> "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/PimpMyRom/tmp-restore-fail.txt"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 848
    const-string v23, "fi;"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    .line 850
    const-string v23, "busybox mount -o ro,remount /system"

    .line 835
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 855
    .local v6, command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_0
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 868
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 869
    .local v4, FAIL:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 871
    new-instance v12, Ljava/io/File;

    const-string v20, "/PimpMyRom/tmp-restore-fail.txt"

    move-object/from16 v0, v20

    invoke-direct {v12, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 874
    .local v12, fileTest:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 878
    .local v8, context:Landroid/content/Context;
    const-string v18, "No Boot-Animation backup found !"

    .line 879
    .local v18, txt:Ljava/lang/CharSequence;
    const/4 v10, 0x1

    .line 880
    .local v10, duration:I
    move-object/from16 v0, v18

    invoke-static {v8, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 881
    .local v16, toast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 883
    new-instance v7, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 884
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 885
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "busybox rm -f "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/PimpMyRom/tmp-restore-fail.txt"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 886
    const-string v23, "busybox mount -o ro,remount /system"

    .line 883
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 890
    .local v7, command2:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_1
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 973
    .end local v4           #FAIL:Ljava/io/File;
    .end local v5           #SDC:Ljava/io/File;
    .end local v6           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v12           #fileTest:Ljava/io/File;
    .end local v16           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 856
    .end local v8           #context:Landroid/content/Context;
    .end local v10           #duration:I
    .end local v18           #txt:Ljava/lang/CharSequence;
    .restart local v5       #SDC:Ljava/io/File;
    .restart local v6       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v11

    .line 858
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 859
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v11

    .line 861
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 862
    .end local v11           #e:Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 864
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 891
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v4       #FAIL:Ljava/io/File;
    .restart local v7       #command2:Lcom/stericson/RootTools/CommandCapture;
    .restart local v8       #context:Landroid/content/Context;
    .restart local v10       #duration:I
    .restart local v12       #fileTest:Ljava/io/File;
    .restart local v16       #toast:Landroid/widget/Toast;
    .restart local v18       #txt:Ljava/lang/CharSequence;
    :catch_3
    move-exception v11

    .line 893
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 894
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v11

    .line 896
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 897
    .end local v11           #e:Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 899
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    .line 906
    .end local v7           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #context:Landroid/content/Context;
    .end local v10           #duration:I
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    .end local v16           #toast:Landroid/widget/Toast;
    .end local v18           #txt:Ljava/lang/CharSequence;
    :cond_0
    new-instance v9, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 907
    .local v9, dialog:Landroid/app/Dialog;
    const v20, 0x7f030017

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 908
    const-string v20, "Please Wait"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 911
    const v20, 0x7f040033

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 912
    .local v15, text:Landroid/widget/TextView;
    const-string v20, "Restoring Original Boot-Animation to 1st slot..."

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    const v20, 0x7f040034

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    .line 916
    .local v13, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 918
    new-instance v14, Ljava/util/Timer;

    invoke-direct {v14}, Ljava/util/Timer;-><init>()V

    .line 919
    .local v14, t:Ljava/util/Timer;
    new-instance v20, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v14}, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$8;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 924
    const-wide/16 v21, 0xbb8

    .line 919
    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v14, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 929
    .restart local v8       #context:Landroid/content/Context;
    const-string v18, "Done ! The boot-animation in 1st slot is now your Rom\'s original boot-animation !"

    .line 930
    .restart local v18       #txt:Ljava/lang/CharSequence;
    const/4 v10, 0x1

    .line 931
    .restart local v10       #duration:I
    move-object/from16 v0, v18

    invoke-static {v8, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 932
    .local v17, toast2:Landroid/widget/Toast;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 934
    new-instance v19, Ljava/util/Timer;

    invoke-direct/range {v19 .. v19}, Ljava/util/Timer;-><init>()V

    .line 935
    .local v19, u:Ljava/util/Timer;
    new-instance v20, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/androguide/pimp/my/rom/ToolsBootanim$8$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$8;Landroid/widget/Toast;Ljava/util/Timer;)V

    .line 940
    const-wide/16 v21, 0xbb8

    .line 935
    invoke-virtual/range {v19 .. v22}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 949
    .end local v4           #FAIL:Ljava/io/File;
    .end local v5           #SDC:Ljava/io/File;
    .end local v6           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #dialog:Landroid/app/Dialog;
    .end local v10           #duration:I
    .end local v12           #fileTest:Ljava/io/File;
    .end local v13           #spin:Landroid/widget/ProgressBar;
    .end local v14           #t:Ljava/util/Timer;
    .end local v15           #text:Landroid/widget/TextView;
    .end local v17           #toast2:Landroid/widget/Toast;
    .end local v18           #txt:Ljava/lang/CharSequence;
    .end local v19           #u:Ljava/util/Timer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 950
    .restart local v8       #context:Landroid/content/Context;
    const-string v18, "Do you have root permissions ?"

    .line 951
    .restart local v18       #txt:Ljava/lang/CharSequence;
    const/4 v10, 0x1

    .line 952
    .restart local v10       #duration:I
    move-object/from16 v0, v18

    invoke-static {v8, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 953
    .restart local v16       #toast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 961
    .end local v8           #context:Landroid/content/Context;
    .end local v10           #duration:I
    .end local v16           #toast:Landroid/widget/Toast;
    .end local v18           #txt:Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 962
    .restart local v8       #context:Landroid/content/Context;
    const-string v18, "Busybox not found ! Please install it !"

    .line 963
    .restart local v18       #txt:Ljava/lang/CharSequence;
    const/4 v10, 0x1

    .line 964
    .restart local v10       #duration:I
    move-object/from16 v0, v18

    invoke-static {v8, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 965
    .restart local v16       #toast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
