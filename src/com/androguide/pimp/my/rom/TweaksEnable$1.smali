.class Lcom/androguide/pimp/my/rom/TweaksEnable$1;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 90
    if-eqz p2, :cond_2

    .line 93
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 94
    .local v4, enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "hw_acceleration"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->hw:Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$1(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 103
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 104
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 105
    const-string v10, "sed -i \'/Hardware Acceleration/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 106
    const-string v10, "sed -i \'/video.accelerate.hw/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 107
    const-string v10, "echo \"### Pimp my Rom : Hardware Acceleration Enabled\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 108
    const-string v10, "echo \"video.accelerate.hw=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 109
    const-string v10, "setprop video.accelerate.hw 1"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 110
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 111
    const-string v10, "busybox mount -o ro,remount /system"

    .line 103
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 116
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

    .line 227
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 117
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 119
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 122
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 125
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 134
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 135
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 136
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 137
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 143
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 145
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 146
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 147
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0

    .line 161
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 162
    .restart local v4       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "hw_acceleration"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 165
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 168
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 171
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 172
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 173
    const-string v10, "sed -i \'/Hardware Acceleration/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 174
    const-string v10, "sed -i \'/video.accelerate.hw/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 175
    const-string v10, "echo \"### Pimp my Rom : Hardware Acceleration Disabled\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 176
    const-string v10, "echo \"video.accelerate.hw=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 177
    const-string v10, "setprop video.accelerate.hw 0"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 178
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 179
    const-string v10, "busybox mount -o ro,remount /system"

    .line 171
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 184
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

    .line 185
    :catch_3
    move-exception v3

    .line 187
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 188
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v3

    .line 190
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 191
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 193
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 200
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 202
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 203
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 204
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 211
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 212
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 213
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 214
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 215
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 217
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
