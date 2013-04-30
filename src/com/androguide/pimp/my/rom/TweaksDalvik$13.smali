.class Lcom/androguide/pimp/my/rom/TweaksDalvik$13;
.super Ljava/lang/Object;
.source "TweaksDalvik.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksDalvik;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1004
    if-eqz p2, :cond_2

    .line 1007
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1008
    .local v4, enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Dexopt-data-only"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->dex:Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$5(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1009
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1011
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1014
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1017
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 1018
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1019
    const-string v10, "sed -i \'/Dex-Optimize Data Only/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 1020
    const-string v10, "sed -i \'/vm.dexopt-data-only=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 1021
    const-string v10, "echo \"### Pimp my Rom : Dex-Optimize Data Only\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 1022
    const-string v10, "echo \"dalvik.vm.dexopt-data-only=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 1023
    const-string v10, "setprop dalvik.vm.dexopt-data-only 1"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 1024
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 1025
    const-string v10, "busybox mount -o ro,remount /system"

    .line 1017
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1030
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

    .line 1136
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 1031
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 1033
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1034
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 1036
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1037
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 1039
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 1046
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1047
    .local v1, context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 1048
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 1049
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1050
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1051
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 1057
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1058
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 1059
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 1060
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1061
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1063
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0

    .line 1070
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1071
    .restart local v4       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Dexopt-data-only"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1072
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1074
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1077
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1080
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 1081
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1082
    const-string v10, "sed -i \'/Dex-Optimize Data Only/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 1083
    const-string v10, "sed -i \'/vm.dexopt-data-only=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 1084
    const-string v10, "echo \"### Pimp my Rom : Disable Dex-Optimize Data Only\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 1085
    const-string v10, "echo \"dalvik.vm.dexopt-data-only=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 1086
    const-string v10, "setprop dalvik.vm.dexopt-data-only 0"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 1087
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 1088
    const-string v10, "busybox mount -o ro,remount /system"

    .line 1080
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1093
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

    .line 1094
    :catch_3
    move-exception v3

    .line 1096
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1097
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v3

    .line 1099
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1100
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 1102
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 1109
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1110
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 1111
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 1112
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1113
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1114
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1120
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1121
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 1122
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 1123
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1124
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1126
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
