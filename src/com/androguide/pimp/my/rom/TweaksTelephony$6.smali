.class Lcom/androguide/pimp/my/rom/TweaksTelephony$6;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 541
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
    .line 548
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    .line 550
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retries : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry1:I

    .line 554
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry1:I

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 559
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry1:I

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 568
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 12
    .parameter "seekBar"

    .prologue
    .line 573
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry1:I

    if-nez v7, :cond_0

    .line 575
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 578
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 580
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 582
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 583
    .local v4, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v7, "retries"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 624
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 627
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 630
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 631
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 632
    const-string v10, "sed -i \'/SMS Retries Amount/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 633
    const-string v10, "sed -i \'/ro.gsm.2nd_data_retries=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 634
    const-string v10, "sed -i \'/ro.gsm.2nd_data_retry_config=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 635
    const-string v10, "echo \"### Pimp my Rom : MMS/SMS Retries Amount & Timer\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 636
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "echo \"ro.gsm.2nd_data_retries="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v11, v11, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" >> /system/build.prop"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 637
    const-string v10, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 638
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setprop ro.gsm.2nd_data_retries "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v11, v11, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 639
    const-string v10, "busybox mount -o ro,remount /system"

    .line 630
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 644
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

    .line 684
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    return-void

    .line 587
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 589
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "2, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 591
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 592
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v7, "retries"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 596
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 598
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "3, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 600
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 601
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v7, "retries"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 605
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 607
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "4, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 609
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 610
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v7, "retries"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 611
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 614
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v7, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 616
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "5, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 618
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 619
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v7, "retries"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 645
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 647
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 648
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 650
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 651
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 653
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 660
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_6
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 661
    .local v1, context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 662
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 663
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 664
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 665
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 672
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_7
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 673
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 674
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 675
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 676
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 678
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
