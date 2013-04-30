.class Lcom/androguide/pimp/my/rom/TweaksTelephony$7;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 691
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
    .line 697
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timer (milliseconds) : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iput p2, v0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    .line 703
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 709
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 13
    .parameter "seekBar"

    .prologue
    .line 714
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 715
    .local v5, timer:Landroid/content/SharedPreferences$Editor;
    const-string v8, "timer"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 716
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 721
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "1, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 723
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 724
    .local v4, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v8, "retries"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 725
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 776
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 779
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 782
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v8, 0x0

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 783
    const-string v11, "busybox mount -o rw,remount /system"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 784
    const-string v11, "sed -i \'/SMS Retries Amount/d\' /system/build.prop"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 785
    const-string v11, "sed -i \'/ro.gsm.2nd_data_retries=/d\' /system/build.prop"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 786
    const-string v11, "sed -i \'/ro.gsm.2nd_data_retry_config=/d\' /system/build.prop"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    .line 787
    const-string v11, "echo \"### Pimp my Rom : MMS/SMS Retries Amount & Timer\" >> /system/build.prop"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    .line 788
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "echo \"ro.gsm.2nd_data_retries="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v12, v12, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" >> /system/build.prop"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    .line 789
    const-string v11, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    .line 790
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "setprop ro.gsm.2nd_data_retries "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v12, v12, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    .line 791
    const-string v11, "busybox mount -o ro,remount /system"

    .line 782
    aput-object v11, v9, v10

    invoke-direct {v0, v8, v9}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 796
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

    .line 834
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    return-void

    .line 728
    :cond_1
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 730
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "2, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 732
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 733
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v8, "retries"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 734
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 737
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 739
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "3, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 741
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 742
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v8, "retries"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 743
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 746
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 748
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "4, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 750
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 751
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v8, "retries"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 752
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 755
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_5

    .line 757
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "5, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v10, v10, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 759
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 760
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v8, "retries"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 764
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    if-nez v8, :cond_0

    .line 766
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    const-string v9, "0"

    iput-object v9, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 768
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 769
    .restart local v4       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v8, "retries"

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget v9, v9, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 770
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 772
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    iget-object v8, v8, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 797
    .end local v4           #prefs:Landroid/content/SharedPreferences$Editor;
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 799
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 800
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 802
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 803
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 805
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 812
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_6
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 813
    .local v1, context:Landroid/content/Context;
    const-string v7, "Do you have root permissions ?"

    .line 814
    .local v7, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 815
    .local v2, duration:I
    invoke-static {v1, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 816
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 817
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 824
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_7
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 825
    .restart local v1       #context:Landroid/content/Context;
    const-string v7, "Busybox not found ! Please install it !"

    .line 826
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 827
    .restart local v2       #duration:I
    invoke-static {v1, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 828
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 830
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1
.end method
