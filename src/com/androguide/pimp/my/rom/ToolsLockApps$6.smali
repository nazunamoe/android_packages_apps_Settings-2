.class Lcom/androguide/pimp/my/rom/ToolsLockApps$6;
.super Ljava/lang/Object;
.source "ToolsLockApps.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsLockApps;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field eco:Ljava/lang/String;

.field eco2:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;Lcom/androguide/pimp/my/rom/App;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p2}, Lcom/androguide/pimp/my/rom/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PPID=$(pidof "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->eco:Ljava/lang/String;

    .line 184
    const-string v0, "echo \'-17\' > /proc/$PID/oom_adj"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->eco2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 190
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/system/etc/lock"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v5, fileTest:Ljava/io/File;
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 195
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 197
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    iget v9, v8, Lcom/androguide/pimp/my/rom/ToolsLockApps;->ppid:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/androguide/pimp/my/rom/ToolsLockApps;->ppid:I

    .line 199
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v8, 0x0

    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 200
    const-string v11, "busybox mount -o rw,remount /system"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 201
    const-string v11, "busybox mount -o rw,remount /proc"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PKG="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PPID=$(pidof "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    .line 204
    const-string v11, "if (($PPID > 0))"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    .line 205
    const-string v11, "then"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    .line 206
    const-string v11, "echo \'-17\' > /proc/$PPID/oom_adj"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    .line 207
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "echo \' \' >> /system/etc/lock"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    .line 208
    const-string v11, "fi"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    .line 210
    const-string v11, "chmod 755 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    .line 211
    const-string v11, "sh /system/etc/shebang.sh"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    .line 212
    const-string v11, "busybox mount -o ro,remount /proc"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    .line 213
    const-string v11, "busybox mount -o ro,remount /system"

    .line 199
    aput-object v11, v9, v10

    invoke-direct {v0, v8, v9}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 221
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 239
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v8}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 240
    .local v1, context:Landroid/content/Context;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Locking "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in memory succeeded !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, txt:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .line 242
    .local v3, duration:I
    invoke-static {v1, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 243
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 248
    new-instance v2, Lcom/stericson/RootTools/CommandCapture;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "rm -f /system/etc/lock"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 248
    aput-object v11, v9, v10

    invoke-direct {v2, v8, v9}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 254
    .local v2, delete:Lcom/stericson/RootTools/CommandCapture;
    const/4 v8, 0x1

    :try_start_1
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 307
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v2           #delete:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    return-void

    .line 222
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v4

    .line 224
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 227
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 230
    .local v4, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v4           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #delete:Lcom/stericson/RootTools/CommandCapture;
    .restart local v3       #duration:I
    .restart local v6       #toast:Landroid/widget/Toast;
    .restart local v7       #txt:Ljava/lang/CharSequence;
    :catch_3
    move-exception v4

    .line 257
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 258
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v4

    .line 260
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 261
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 263
    .local v4, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    .line 276
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #delete:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #duration:I
    .end local v4           #e:Ljava/util/concurrent/TimeoutException;
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_0
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v8}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 277
    .restart local v1       #context:Landroid/content/Context;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Locking "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->pkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in memory has failed !"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .line 279
    .restart local v3       #duration:I
    invoke-static {v1, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 280
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 288
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v8}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 289
    .restart local v1       #context:Landroid/content/Context;
    const-string v7, "Do you have root permissions ?"

    .line 290
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .line 291
    .restart local v3       #duration:I
    invoke-static {v1, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 292
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 298
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v8}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    .restart local v1       #context:Landroid/content/Context;
    const-string v7, "Busybox not found !"

    .line 300
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .line 301
    .restart local v3       #duration:I
    invoke-static {v1, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 302
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
