.class Lcom/androguide/pimp/my/rom/Extras$2;
.super Ljava/lang/Object;
.source "Extras.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/Extras;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/Extras;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/Extras;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 17
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 76
    if-eqz p2, :cond_3

    .line 81
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 84
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$1(Lcom/androguide/pimp/my/rom/Extras;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 88
    .local v8, enable:Landroid/content/SharedPreferences$Editor;
    const-string v12, "Extras_Build-desc"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->hw:Landroid/widget/ToggleButton;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/Extras;->access$2(Lcom/androguide/pimp/my/rom/Extras;)Landroid/widget/ToggleButton;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v13

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, SDC:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 94
    new-instance v9, Ljava/io/File;

    const-string v12, ".build-desc.txt"

    invoke-direct {v9, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v9, fileTest:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 99
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 100
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 101
    const-string v15, "PIMP=_PIMPED_"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 102
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "DESC=$`cat "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".build-desc.txt`"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 103
    const-string v15, "PIMPDESC=$PIMP$DESC"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 104
    const-string v15, "sed -i \'/ro.build.display.id=/d\' /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 105
    const-string v15, "echo \"ro.build.display.id=$PIMPDESC\" >> /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    .line 106
    const-string v15, "setprop ro.build.display.id $PIMPDESC"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    .line 107
    const-string v15, "busybox mount -o rw,remount /system"

    .line 99
    aput-object v15, v13, v14

    invoke-direct {v4, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 115
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

    .line 329
    .end local v2           #SDC:Ljava/io/File;
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v9           #fileTest:Ljava/io/File;
    :goto_0
    return-void

    .line 116
    .restart local v2       #SDC:Ljava/io/File;
    .restart local v4       #command2:Lcom/stericson/RootTools/CommandCapture;
    .restart local v8       #enable:Landroid/content/SharedPreferences$Editor;
    .restart local v9       #fileTest:Ljava/io/File;
    :catch_0
    move-exception v7

    .line 118
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 121
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 124
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 133
    .local v1, SD:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 135
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/16 v13, 0x9

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 136
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 137
    const-string v15, "PIMP=_PIMPED_"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 138
    const-string v15, "id=$(getprop ro.build.display.id)"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 139
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "echo $id >> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".build-desc.txt"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 140
    const-string v15, "PIMPid=$PIMP$id"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 141
    const-string v15, "sed -i \'/ro.build.display.id=/d\' /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    .line 142
    const-string v15, "echo \"ro.build.display.id=$PIMPid\" >> /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    .line 143
    const-string v15, "setprop ro.build.display.id $PIMPid"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    .line 144
    const-string v15, "busybox mount -o rw,remount /system"

    .line 135
    aput-object v15, v13, v14

    invoke-direct {v4, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 151
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

    .line 152
    :catch_3
    move-exception v7

    .line 154
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 157
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 160
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v1           #SD:Ljava/io/File;
    .end local v2           #SDC:Ljava/io/File;
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    .end local v8           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v9           #fileTest:Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 169
    .local v5, context:Landroid/content/Context;
    const-string v11, "Do you have root permissions ?"

    .line 170
    .local v11, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 171
    .local v6, duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 172
    .local v10, toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 179
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 180
    .restart local v5       #context:Landroid/content/Context;
    const-string v11, "Busybox not found ! Please install it !"

    .line 181
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 182
    .restart local v6       #duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 183
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 197
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$1(Lcom/androguide/pimp/my/rom/Extras;)Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 198
    .restart local v8       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v12, "Extras_Build-desc"

    const/4 v13, 0x0

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 204
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 207
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 208
    .restart local v1       #SD:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 210
    new-instance v9, Ljava/io/File;

    const-string v12, ".build-desc.txt"

    invoke-direct {v9, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .restart local v9       #fileTest:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 215
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 216
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 217
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "DESC=$`cat "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".build-desc.txt`"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 218
    const-string v15, "sed -i \'/ro.build.display.id=/d\' /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 219
    const-string v15, "echo \"ro.build.display.id=$DESC\" >> /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 220
    const-string v15, "setprop ro.build.display.id $DESC"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 221
    const-string v15, "busybox mount -o rw,remount /system"

    .line 215
    aput-object v15, v13, v14

    invoke-direct {v4, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 229
    .restart local v4       #command2:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_2
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_9

    .line 275
    :goto_1
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 276
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 277
    const-string v15, "PIMP=_PIMPED_"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 278
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "DESC=$`cat "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".build-desc.txt`"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 279
    const-string v15, "sed -i \'/ro.build.display.id=/d\' /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 280
    const-string v15, "echo \"ro.build.display.id=$DESC\" >> /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 281
    const-string v15, "busybox mount -o rw,remount /system"

    .line 275
    aput-object v15, v13, v14

    invoke-direct {v3, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 286
    .local v3, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_3
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_e

    goto/16 :goto_0

    .line 287
    :catch_6
    move-exception v7

    .line 289
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 230
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 232
    .restart local v7       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 233
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_8
    move-exception v7

    .line 235
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 236
    .end local v7           #e:Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 238
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_4
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v12, 0x0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    .line 249
    const-string v15, "busybox mount -o rw,remount /system"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 250
    const-string v15, "DESC=$(getprop ro.build.description)"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 251
    const-string v15, "sed -i \'/ro.build.display.id=/d\' /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 252
    const-string v15, "echo \"ro.build.display.id=$DESC\" >> /system/build.prop"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    .line 253
    const-string v15, "setprop ro.build.display.id $DESC"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    .line 254
    const-string v15, "busybox mount -o rw,remount /system"

    .line 248
    aput-object v15, v13, v14

    invoke-direct {v4, v12, v13}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 261
    .restart local v4       #command2:Lcom/stericson/RootTools/CommandCapture;
    const/4 v12, 0x1

    :try_start_4
    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v12

    invoke-virtual {v12}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_c

    goto/16 :goto_1

    .line 262
    :catch_a
    move-exception v7

    .line 264
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 265
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_b
    move-exception v7

    .line 267
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 268
    .end local v7           #e:Ljava/io/IOException;
    :catch_c
    move-exception v7

    .line 270
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 290
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_d
    move-exception v7

    .line 292
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 293
    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 295
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 302
    .end local v1           #SD:Ljava/io/File;
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v4           #command2:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    .end local v9           #fileTest:Ljava/io/File;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 303
    .restart local v5       #context:Landroid/content/Context;
    const-string v11, "Do you have root permissions ?"

    .line 304
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 305
    .restart local v6       #duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 306
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 313
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #toast:Landroid/widget/Toast;
    .end local v11           #txt:Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 314
    .restart local v5       #context:Landroid/content/Context;
    const-string v11, "Busybox not found ! Please install it !"

    .line 315
    .restart local v11       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 316
    .restart local v6       #duration:I
    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 317
    .restart local v10       #toast:Landroid/widget/Toast;
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/androguide/pimp/my/rom/Extras$2;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    #getter for: Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v12}, Lcom/androguide/pimp/my/rom/Extras;->access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
