.class Lcom/androguide/pimp/my/rom/TweaksTelephony$4;
.super Ljava/lang/Object;
.source "TweaksTelephony.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 352
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
    .line 358
    const/16 v0, 0x19

    if-ge p2, v0, :cond_0

    .line 360
    const/16 p2, 0x19

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sensor Delay : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox1:I

    .line 370
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 376
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 11
    .parameter "seekBar"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 383
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 386
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 389
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    .line 390
    const-string v7, "busybox mount -o rw,remount /system"

    aput-object v7, v6, v10

    .line 391
    const-string v7, "sed -i \'/Proximity Sensor Delay/d\' /system/build.prop"

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 392
    const-string v8, "sed -i \'/ro.lge.proximity.delay=/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 393
    const-string v8, "sed -i \'/mot.proximity.delay=/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 394
    const-string v8, "echo \"### Pimp my Rom : Proximity Sensor Delay\" >> /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"ro.lge.proximity.delay="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"mot.proximity.delay="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    .line 397
    const-string v8, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop ro.lge.proximity.delay "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    .line 399
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop mot.proximity.delay "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    .line 400
    const-string v8, "busybox mount -o ro,remount /system"

    .line 389
    aput-object v8, v6, v7

    invoke-direct {v0, v10, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 405
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

    .line 443
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 406
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 408
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 409
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 411
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 414
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 422
    .local v1, context:Landroid/content/Context;
    const-string v5, "Do you have root permissions ?"

    .line 423
    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 424
    .local v2, duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 425
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 426
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 433
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 434
    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Busybox not found ! Please install it !"

    .line 435
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 436
    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 437
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 439
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
