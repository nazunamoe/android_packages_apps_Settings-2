.class Lcom/androguide/pimp/my/rom/ModsXloud$3;
.super Ljava/lang/Object;
.source "ModsXloud.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ModsXloud;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 82
    if-eqz p2, :cond_2

    .line 85
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$1(Lcom/androguide/pimp/my/rom/ModsXloud;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 86
    .local v4, enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "hw_acceleration"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$2(Lcom/androguide/pimp/my/rom/ModsXloud;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0xe

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 96
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 97
    const-string v10, "sed -i \'/xLoud Engine Service/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 98
    const-string v10, "sed -i \'/ro.semc.sound_effects_enabled/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 99
    const-string v10, "sed -i \'/ro.semc.xloud.supported=true/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 100
    const-string v10, "sed -i \'/persist.service.xloud.enable/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 101
    const-string v10, "sed -i \'/af.resampler.quality=255/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 102
    const-string v10, "sed -i \'/af.resample=48000/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 104
    const-string v10, "echo \"### Pimp my Rom : xLoud Engine Service\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 105
    const-string v10, "echo \"ro.semc.sound_effects_enabled=true\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    .line 106
    const-string v10, "echo \"ro.semc.xloud.supported=true\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    .line 107
    const-string v10, "echo \"persist.service.xloud.enable=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    .line 108
    const-string v10, "echo \"af.resampler.quality=255\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    .line 109
    const-string v10, "echo \"af.resample=48000\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    .line 110
    const-string v10, "busybox mount -o ro,remount /system"

    .line 95
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 115
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

    .line 127
    :goto_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    .local v1, context:Landroid/content/Context;
    const-string v6, "Reboot Required !"

    .line 129
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 130
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 131
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 237
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    return-void

    .line 116
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 118
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 121
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 124
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 138
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 139
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 140
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_1

    .line 147
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 149
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 150
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 151
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 153
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_1

    .line 165
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$1(Lcom/androguide/pimp/my/rom/ModsXloud;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 166
    .restart local v4       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "hw_acceleration"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 172
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 175
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 176
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 177
    const-string v10, "sed -i \'/xLoud Engine Service/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 178
    const-string v10, "sed -i \'/ro.semc.sound_effects_enabled/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 179
    const-string v10, "sed -i \'/ro.semc.xloud.supported=true/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 180
    const-string v10, "sed -i \'/persist.service.xloud.enable/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 181
    const-string v10, "sed -i \'/af.resampler.quality=255/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 182
    const-string v10, "sed -i \'/af.resample=48000/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 183
    const-string v10, "busybox mount -o ro,remount /system"

    .line 175
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 188
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

    .line 200
    :goto_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 201
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Reboot Required !"

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

    goto/16 :goto_1

    .line 189
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :catch_3
    move-exception v3

    .line 191
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 192
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v3

    .line 194
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 195
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 197
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_2

    .line 210
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 211
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 212
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 213
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 214
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 215
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 221
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 223
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 224
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 225
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 227
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud$3;->this$0:Lcom/androguide/pimp/my/rom/ModsXloud;

    #getter for: Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ModsXloud;->access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
