.class Lcom/androguide/pimp/my/rom/TweaksTelephony$2;
.super Ljava/lang/Object;
.source "TweaksTelephony.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksTelephony;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 119
    if-eqz p2, :cond_2

    .line 122
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 123
    .local v4, enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "wideband"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->amr:Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$1(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 132
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 133
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 134
    const-string v10, "sed -i \'/Adaptive Multi-Rate Wideband/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 135
    const-string v10, "sed -i \'/ro.ril.enable.amr.wideband/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 136
    const-string v10, "echo \"### Pimp my Rom : Enable Adaptive Multi-Rate Wideband\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 137
    const-string v10, "echo \"ro.ril.enable.amr.wideband=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 138
    const-string v10, "setprop ro.ril.enable.amr.wideband 1"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 139
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 140
    const-string v10, "busybox mount -o ro,remount /system"

    .line 132
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 145
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

    .line 258
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 146
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 148
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 151
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 154
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 161
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    .local v1, context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 163
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 164
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 165
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 166
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 172
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 173
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 174
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 175
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 176
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 178
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0

    .line 191
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 192
    .restart local v4       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "wideband"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 199
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 202
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 203
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 204
    const-string v10, "sed -i \'/Adaptive Multi-Rate Wideband/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 205
    const-string v10, "sed -i \'/ro.ril.enable.amr.wideband/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 206
    const-string v10, "echo \"### Pimp my Rom : Disable Adaptive Multi-Rate Wideband\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 207
    const-string v10, "echo \"ro.ril.enable.amr.wideband=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 208
    const-string v10, "setprop ro.ril.enable.amr.wideband 0"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 209
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 210
    const-string v10, "busybox mount -o ro,remount /system"

    .line 202
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 215
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

    .line 216
    :catch_3
    move-exception v3

    .line 218
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 219
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v3

    .line 221
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 222
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 224
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 231
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 233
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 234
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 235
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 236
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 242
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 243
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 244
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 245
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 246
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 248
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
