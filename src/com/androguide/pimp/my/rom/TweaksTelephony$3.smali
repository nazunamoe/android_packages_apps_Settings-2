.class Lcom/androguide/pimp/my/rom/TweaksTelephony$3;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 268
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
    .line 274
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ring Delay : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring1:I

    .line 278
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 283
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 11
    .parameter "seekBar"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 288
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 294
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    .line 295
    const-string v7, "busybox mount -o rw,remount /system"

    aput-object v7, v6, v10

    .line 296
    const-string v7, "sed -i \'/Ringing Delay/d\' /system/build.prop"

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 297
    const-string v8, "sed -i \'/ro.telephony.call_ring.delay=/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 298
    const-string v8, "sed -i \'/ring.delay=/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    .line 299
    const-string v8, "echo \"### Pimp my Rom : Phone Ringing Delay\" >> /system/build.prop"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"ro.telephony.call_ring.delay="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "echo \"ring.delay="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" >> /system/build.prop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    .line 302
    const-string v8, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop ro.telephony.call_ring.delay "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "setprop ring.delay "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    .line 305
    const-string v8, "busybox mount -o ro,remount /system"

    .line 294
    aput-object v8, v6, v7

    invoke-direct {v0, v10, v6}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 310
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

    .line 348
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 311
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 313
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 316
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 317
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 319
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 327
    .local v1, context:Landroid/content/Context;
    const-string v5, "Do you have root permissions ?"

    .line 328
    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 329
    .local v2, duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 330
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 331
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 338
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 339
    .restart local v1       #context:Landroid/content/Context;
    const-string v5, "Busybox not found ! Please install it !"

    .line 340
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 341
    .restart local v2       #duration:I
    invoke-static {v1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 342
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 344
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v6}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
