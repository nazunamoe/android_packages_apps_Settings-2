.class Lcom/androguide/pimp/my/rom/TweaksEnable$5;
.super Ljava/lang/Object;
.source "TweaksEnable.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksEnable;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 706
    if-eqz p2, :cond_2

    .line 709
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 710
    .local v4, enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Error_check"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->check:Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$6(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 711
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 713
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 716
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 719
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 720
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 721
    const-string v10, "sed -i \'/Enable Kernel Error Checking/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 722
    const-string v10, "sed -i \'/Disable Kernel Error Checking/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 723
    const-string v10, "sed -i \'/ro.kernel.android.checkjni/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 724
    const-string v10, "sed -i \'/ro.kernel.checkjni/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 725
    const-string v10, "echo \"### Pimp my Rom : Disable Kernel Error Checking\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 726
    const-string v10, "echo \"ro.kernel.android.checkjni=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 727
    const-string v10, "echo \"ro.kernel.checkjni=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 728
    const-string v10, "busybox mount -o ro,remount /system"

    .line 719
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 733
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 845
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 734
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 736
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 737
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 739
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 740
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 742
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 749
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 750
    .local v1, context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 751
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 752
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 753
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 754
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 760
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 761
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 762
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 763
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 764
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 766
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0

    .line 778
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 779
    .restart local v4       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Error_check"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 780
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 782
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 785
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 788
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 789
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 790
    const-string v10, "sed -i \'/Enable Kernel Error Checking/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 791
    const-string v10, "sed -i \'/Disable Kernel Error Checking/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 792
    const-string v10, "sed -i \'/ro.kernel.android.checkjni/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 793
    const-string v10, "sed -i \'/ro.kernel.checkjni/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 794
    const-string v10, "echo \"### Pimp my Rom : Enable Kernel Error Checking\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 795
    const-string v10, "echo \"ro.kernel.android.checkjni=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 796
    const-string v10, "echo \"ro.kernel.checkjni=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 797
    const-string v10, "busybox mount -o ro,remount /system"

    .line 788
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 802
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    .line 803
    :catch_3
    move-exception v3

    .line 805
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 806
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v3

    .line 808
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 809
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 811
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 818
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 819
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 820
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 821
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 822
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 823
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 829
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 830
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 831
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 832
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 833
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 835
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
