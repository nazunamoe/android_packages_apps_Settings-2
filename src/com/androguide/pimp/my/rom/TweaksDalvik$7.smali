.class Lcom/androguide/pimp/my/rom/TweaksDalvik$7;
.super Ljava/lang/Object;
.source "TweaksDalvik.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 353
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
    .line 359
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->stepSize:I

    div-int v0, p2, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v1, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->stepSize:I

    mul-int p2, v0, v1

    .line 361
    if-nez p2, :cond_0

    .line 363
    add-int/lit8 p2, p2, 0x40

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Heap Size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->heap1:I

    .line 370
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 375
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 11
    .parameter "seekBar"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 380
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 383
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    .line 387
    const-string v7, "busybox mount -o rw,remount /system"

    aput-object v7, v6, v10

    .line 388
    const-string v7, "sed -i \'/vm.heapsize=/d\' /system/build.prop"

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"dalvik.vm.heapsize="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksDalvik;->heap1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v9, v9, Lcom/androguide/pimp/my/rom/TweaksDalvik;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 390
    const-string v8, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop dalvik.vm.heapsize "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksDalvik;->heap1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v9, v9, Lcom/androguide/pimp/my/rom/TweaksDalvik;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 392
    const-string v8, "busybox mount -o ro,remount /system"

    .line 386
    aput-object v8, v6, v7

    invoke-direct {v0, v10, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 397
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

    .line 435
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 398
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 400
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 403
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 406
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 414
    .local v1, context:Landroid/content/Context;
    const-string v5, "Do you have root permissions ?"

    .line 415
    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 416
    .local v2, duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 417
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 418
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 425
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 426
    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Busybox not found ! Please install it !"

    .line 427
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 428
    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 429
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 431
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
