.class Lcom/androguide/pimp/my/rom/ModsAdblock$1;
.super Ljava/lang/Object;
.source "ModsAdblock.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ModsAdblock;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ModsAdblock;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 17
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 69
    if-eqz p2, :cond_3

    .line 72
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 75
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$0(Lcom/androguide/pimp/my/rom/ModsAdblock;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 79
    .local v8, enable:Landroid/content/SharedPreferences$Editor;
    const-string v12, "hw_acceleration"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$1(Lcom/androguide/pimp/my/rom/ModsAdblock;)Landroid/widget/ToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v13

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 83
    .local v2, SDC:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 85
    new-instance v9, Ljava/io/File;

    const-string v12, "pmr_hosts"

    invoke-direct {v9, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v9, fileTest:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 90
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 91
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 92
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "busybox cp -fp \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"/pmr_hosts /system/etc/hosts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 93
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "busybox cp -fp \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"/pmr_hosts /system/etc/hosts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 94
    const-string v15, "chmod 644 /system/etc/hosts"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 95
    const-string v15, "busybox mount -o ro,remount /system"

    .line 90
    aput-object v15, v13, v14

    invoke-direct {v4, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 102
    .local v4, command2:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_0
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 246
    .end local v2           #SDC:Ljava/io/File;
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v9           #fileTest:Ljava/io/File;
    :goto_0
    return-void

    .line 103
    .restart local v2       #SDC:Ljava/io/File;
    .restart local v4       #command2:Lcom/stericson/RootTools/CommandCapture;
    .restart local v8       #enable:Landroid/content/SharedPreferences$Editor;
    .restart local v9       #fileTest:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 105
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 108
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 111
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    invoke-virtual {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->updateData()V

    .line 121
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 122
    .local v1, SD:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 124
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 125
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "busybox cp -fp \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"/pmr_hosts /system/etc/hosts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 126
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "busybox cp -fp \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"/pmr_hosts /system/etc/hosts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 127
    const-string v15, "chmod 644 /system/etc/hosts"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 128
    const-string v15, "busybox mount -o ro,remount /system"

    .line 124
    aput-object v15, v13, v14

    invoke-direct {v4, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 135
    .restart local v4       #command2:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_1
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 136
    :catch_3
    move-exception v7

    .line 138
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 141
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 144
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1           #SD:Ljava/io/File;
    .end local v2           #SDC:Ljava/io/File;
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    .end local v8           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v9           #fileTest:Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 153
    .local v5, context:Landroid/content/Context;
    const-string v11, "Do you have root permissions ?"

    .line 154
    .local v11, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 155
    .local v6, duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 156
    .local v10, toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 163
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 164
    .restart local v5       #context:Landroid/content/Context;
    const-string v11, "Busybox not found ! Please install it !"

    .line 165
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 166
    .restart local v6       #duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 167
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 181
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$0(Lcom/androguide/pimp/my/rom/ModsAdblock;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 182
    .restart local v8       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v12, "hw_acceleration"

    const/4 v13, 0x0

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 188
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 193
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 194
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 195
    const-string v15, "rm -f /system/etc/hosts"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 196
    const-string v15, "echo \"127.0.0.1      localhost\" >> /system/etc/hosts"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 197
    const-string v15, "chmod 644 /system/etc/hosts"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 198
    const-string v15, "busybox mount -o ro,remount /system"

    .line 193
    aput-object v15, v13, v14

    invoke-direct {v3, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 203
    .local v3, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_2
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_8

    goto/16 :goto_0

    .line 204
    :catch_6
    move-exception v7

    .line 206
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 207
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 209
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 210
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 212
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 219
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 220
    .restart local v5       #context:Landroid/content/Context;
    const-string v11, "Do you have root permissions ?"

    .line 221
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 222
    .restart local v6       #duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 223
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 230
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 231
    .restart local v5       #context:Landroid/content/Context;
    const-string v11, "Busybox not found ! Please install it !"

    .line 232
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 233
    .restart local v6       #duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 234
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/ModsAdblock$1;->this$0:Lcom/androguide/pimp/my/rom/ModsAdblock;

    #getter for: Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/ModsAdblock;->access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
