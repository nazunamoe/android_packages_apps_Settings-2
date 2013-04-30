.class Lcom/androguide/pimp/my/rom/TweaksNetwork$6;
.super Ljava/lang/Object;
.source "TweaksNetwork.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksNetwork;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 150
    if-nez p2, :cond_0

    .line 152
    add-int/lit8 p2, p2, 0x1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scan Interval : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->scan1:I

    .line 159
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 164
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 11
    .parameter "seekBar"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 169
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/String;

    .line 176
    const-string v7, "busybox mount -o rw,remount /system"

    aput-object v7, v6, v10

    .line 177
    const-string v7, "sed -i \'/wifi.supplicant_scan_interval=/d\' /system/build.prop"

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 178
    const-string v8, "sed -i \'/persist.wifi_scan_interval=/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"wifi.supplicant_scan_interval="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksNetwork;->scan1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 180
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"persist.wifi_scan_interval="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksNetwork;->scan1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 181
    const-string v8, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop wifi.supplicant_scan_interval "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksNetwork;->scan1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop persist.wifi_scan_interval "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksNetwork;->scan1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 184
    const-string v8, "busybox mount -o ro,remount /system"

    .line 175
    aput-object v8, v6, v7

    invoke-direct {v0, v10, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 189
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

    .line 227
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 190
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 192
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 195
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 198
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 206
    .local v1, context:Landroid/content/Context;
    const-string v5, "Do you have root permissions ?"

    .line 207
    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 208
    .local v2, duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 209
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 210
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 217
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Busybox not found ! Please install it !"

    .line 219
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 220
    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 221
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 223
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
