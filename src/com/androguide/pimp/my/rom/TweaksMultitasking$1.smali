.class Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;
.super Ljava/lang/Object;
.source "TweaksMultitasking.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksMultitasking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 137
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    .line 144
    const-string v7, "busybox mount -o rw,remount /system"

    aput-object v7, v6, v9

    .line 145
    const-string v7, "renice -17 `ps -p|grep \"\\-19\"|cut -d \" \" -f 7`"

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 146
    const-string v8, "renice -18 `ps -p|grep \"\\-20\"|cut -d \" \" -f 7`"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 147
    const-string v8, "busybox mount -o ro,remount /system"

    .line 143
    aput-object v8, v6, v7

    invoke-direct {v0, v9, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 152
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v6

    invoke-virtual {v6}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 190
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    .local v1, context:Landroid/content/Context;
    const-string v5, "Renice successful !"

    .line 192
    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 193
    .local v2, duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 194
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 196
    return-void

    .line 153
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 155
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 158
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 159
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 161
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 169
    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Do you have root permissions ?"

    .line 170
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 171
    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 172
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 173
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 180
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 181
    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Busybox not found ! Please install it !"

    .line 182
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 183
    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 184
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
