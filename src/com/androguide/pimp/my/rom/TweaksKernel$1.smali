.class Lcom/androguide/pimp/my/rom/TweaksKernel$1;
.super Ljava/lang/Object;
.source "TweaksKernel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksKernel$1;)Lcom/androguide/pimp/my/rom/TweaksKernel;
    .locals 1
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 601
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 604
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 607
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 608
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 609
    const-string v16, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 610
    const-string v16, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 611
    const-string v16, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 612
    const-string v16, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 613
    const-string v16, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 614
    const-string v16, "cd /system/etc"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 615
    const-string v16, "sh shebang.sh"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 616
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 617
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 618
    const-string v16, "busybox mount -o ro,remount /system"

    .line 607
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 623
    .local v3, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_0
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 664
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondemand:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 666
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 669
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 672
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 673
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 674
    const-string v16, "sed -i \'/Ondemand Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 675
    const-string v16, "sed -i \'/ondemand/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 676
    const-string v16, "sed -i \'/SAMPLING_RATE1=/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 677
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 678
    const-string v16, "SAMPLING_RATE1=$(busybox expr `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_transition_latency` \\* 750 / 1000)"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 679
    const-string v16, "echo \"\n### Pimp my Rom : Ondemand Governor Tweaks \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 680
    const-string v16, "echo \"SAMPLING_RATE1=$(busybox expr `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_transition_latency` \\* 750 / 1000)\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 681
    const-string v16, "echo \"chmod -R 777 /sys/devices/system/cpu/cpufreq/ondemand\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 682
    const-string v16, "echo  \"echo \"95\" > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 683
    const-string v16, "echo  \"echo \"5\" > /sys/devices/system/cpu/cpufreq/ondemand/down_differential;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 684
    const-string v16, "echo  \"echo \"1\" > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 685
    const-string v16, "echo  \"echo \"1\" > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 686
    const-string v16, "echo  \"echo $SAMPLING_RATE1 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 687
    const-string v16, "echo \"chmod -R 444 /sys/devices/system/cpu/cpufreq/ondemand\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 688
    const-string v16, "busybox mount -o ro,remount /system"

    .line 672
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 690
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_1
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 727
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondemandx:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 729
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 732
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 735
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x10

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 736
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 737
    const-string v16, "sed -i \'/Ondemandx Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 738
    const-string v16, "sed -i \'/ondemandx/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 739
    const-string v16, "sed -i \'/SAMPLING_RATE2=/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 740
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 741
    const-string v16, "SAMPLING_RATE2=$(busybox expr `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_transition_latency` \\* 750 / 1000)"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 742
    const-string v16, "echo \"\n### Pimp my Rom : Ondemandx Governor Tweaks \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 743
    const-string v16, "echo \"SAMPLING_RATE2=$(busybox expr `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_transition_latency` \\* 750 / 1000)\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 744
    const-string v16, "echo \"chmod -R 777 /sys/devices/system/cpu/cpufreq/ondemandx\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 745
    const-string v16, "echo \"echo \"90\" > /sys/devices/system/cpu/cpufreq/ondemandx/up_threshold;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 746
    const-string v16, "echo \"echo \"5\" > /sys/devices/system/cpu/cpufreq/ondemandx/down_differential;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 747
    const-string v16, "echo \"echo \"1\" > /sys/devices/system/cpu/cpufreq/ondemandx/io_is_busy;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 748
    const-string v16, "echo \"echo \"1\" > /sys/devices/system/cpu/cpufreq/ondemandx/sampling_down_factor;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 749
    const-string v16, "echo  \"echo $SAMPLING_RATE2 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 750
    const-string v16, "echo \"chmod -R 444 /sys/devices/system/cpu/cpufreq/ondemandx\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 751
    const-string v16, "busybox mount -o ro,remount /system"

    .line 735
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 753
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_2
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_8

    .line 790
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->smartassv2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 792
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 795
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 798
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x12

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 799
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 800
    const-string v16, "sed -i \'/SmartassV2 Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 801
    const-string v16, "sed -i \'/smartass/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 802
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 803
    const-string v16, "echo \"\n### Pimp my Rom : SmartassV2 Governor Tweaks \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 804
    const-string v16, "echo \"chmod -R 777 /sys/devices/system/cpu/cpufreq/smartass\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 805
    const-string v16, "echo \"echo \"500000\" > /sys/devices/system/cpu/cpufreq/smartass/awake_ideal_freq;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 806
    const-string v16, "echo \"echo \"200000\" > /sys/devices/system/cpu/cpufreq/smartass/sleep_ideal_freq;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 807
    const-string v16, "echo \"echo \"200000\" > /sys/devices/system/cpu/cpufreq/smartass/sleep_ideal_freq;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 808
    const-string v16, "echo \"echo \"500000\" > /sys/devices/system/cpu/cpufreq/smartass/sleep_wakeup_freq;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 809
    const-string v16, "echo \"echo \"85\" > /sys/devices/system/cpu/cpufreq/smartass/max_cpu_load;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 810
    const-string v16, "echo \"echo \"75\" > /sys/devices/system/cpu/cpufreq/smartass/min_cpu_load;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 811
    const-string v16, "echo \"echo \"200000\" > /sys/devices/system/cpu/cpufreq/smartass/ramp_down_step;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 812
    const-string v16, "echo \"echo \"200000\" > /sys/devices/system/cpu/cpufreq/smartass/ramp_up_step;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 813
    const-string v16, "echo \"echo \"48000\" > /sys/devices/system/cpu/cpufreq/smartass/up_rate_us;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 814
    const-string v16, "echo \"echo \"49000\" > /sys/devices/system/cpu/cpufreq/smartass/down_rate_us;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 815
    const-string v16, "echo \"chmod -R 444 /sys/devices/system/cpu/cpufreq/smartass\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 816
    const-string v16, "busybox mount -o ro,remount /system"

    .line 798
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 818
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_3
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_b

    .line 857
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->interactive:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 859
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 862
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 865
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 866
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 867
    const-string v16, "sed -i \'/Interactive Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 868
    const-string v16, "sed -i \'/interactive/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 869
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 870
    const-string v16, "echo \"\n### Pimp my Rom : Interactive Governor Tweaks \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 871
    const-string v16, "echo \"chmod -R 777 /sys/devices/system/cpu/cpufreq/interactive\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 872
    const-string v16, "echo \"echo \"95\" > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 873
    const-string v16, "echo \"echo \"1000000\" > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 874
    const-string v16, "echo \"echo \"10000\" > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 875
    const-string v16, "echo \"echo \"40000\" > /sys/devices/system/cpu/cpufreq/interactive/timer_rate\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 876
    const-string v16, "echo \"chmod -R 777 /sys/devices/system/cpu/cpufreq/interactive\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 878
    const-string v16, "busybox mount -o ro,remount /system"

    .line 865
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 880
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_4
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_e

    .line 918
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->conservative:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 920
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 923
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 926
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x11

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 927
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 928
    const-string v16, "sed -i \'/Conservative Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 929
    const-string v16, "sed -i \'/conservative/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 930
    const-string v16, "sed -i \'/fi;       /d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 931
    const-string v16, "sed -i \'/SAMPLING_RATE3=/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 932
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 933
    const-string v16, "SAMPLING_RATE3=$(busybox expr `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_transition_latency` \\* 750 / 1000)"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 934
    const-string v16, "echo \"\n### Pimp my Rom : Conservative Governor Tweaks \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 935
    const-string v16, "echo \"SAMPLING_RATE3=$(busybox expr `cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_transition_latency` \\* 750 / 1000)\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 936
    const-string v16, "echo \"chmod -R 777 /sys/devices/system/cpu/cpufreq/conservative\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 937
    const-string v16, "echo \"echo \"95\" > /sys/devices/system/cpu/cpufreq/conservative/up_threshold;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 938
    const-string v16, "echo \"echo \"35\" > /sys/devices/system/cpu/cpufreq/conservative/down_threshold;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 939
    const-string v16, "echo \"echo \"10\" > /sys/devices/system/cpu/cpufreq/conservative/freq_step;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 940
    const-string v16, "echo  \"echo $SAMPLING_RATE3 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 941
    const-string v16, "echo \"echo \"1\" > /sys/devices/system/cpu/cpufreq/conservative/sampling_down_factor;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 942
    const-string v16, "echo \"chmod -R 444 /sys/devices/system/cpu/cpufreq/conservative\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 943
    const-string v16, "busybox mount -o ro,remount /system"

    .line 926
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 945
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_5
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_11

    .line 986
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->iostats:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 988
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 991
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 994
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 995
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 996
    const-string v16, "sed -i \'/Disable I/O Stats/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 997
    const-string v16, "sed -i \'/iostats/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 998
    const-string v16, "sed -i \'/fi;  /d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 999
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1000
    const-string v16, "echo \"\n### Pimp my Rom : Disable I/O Stats \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1001
    const-string v16, "echo \"if [ -e $i/queue/iostats ]; then\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1002
    const-string v16, "echo \"echo \"0\" > $i/queue/iostats;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1003
    const-string v16, "echo \"fi;  \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1004
    const-string v16, "busybox mount -o ro,remount /system"

    .line 994
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1006
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_6
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_14

    .line 1045
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->sysctlio:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1047
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1050
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1053
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1054
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1055
    const-string v16, "sed -i \'/Default I/O Scheduler Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1056
    const-string v16, "sed -i \'/nr_requests/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1057
    const-string v16, "sed -i \'/$i/queue/rotational;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1058
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1059
    const-string v16, "echo \"\n### Pimp my Rom : Default I/O Scheduler Tweaks\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1060
    const-string v16, "echo \"if [ -e $i/queue/rotational ]; then\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1061
    const-string v16, "echo \"echo 0 > $i/queue/rotational; fi;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1062
    const-string v16, "echo \"if [ -e $i/queue/nr_requests ]; then\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1063
    const-string v16, "echo \"echo 1024 > $i/queue/nr_requests; fi;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1064
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1053
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1066
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_7
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_17

    .line 1105
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->novsync:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1107
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1110
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1113
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1114
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1115
    const-string v16, "sed -i \'/Disable Vsync/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1116
    const-string v16, "sed -i \'/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1117
    const-string v16, "sed -i \'/sys/kernel/debug/msm_fb/0/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1118
    const-string v16, "sed -i \'/umount /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1119
    const-string v16, "sed -i \'/busybox mount -t debugfs debugfs /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1120
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1121
    const-string v16, "echo \"\n### Pimp my Rom : Disable Vsync\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1122
    const-string v16, "echo \"busybox mount -t debugfs debugfs /sys/kernel/debug\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1123
    const-string v16, "echo \"echo \'0\' > /sys/kernel/debug/msm_fb/0/vsync_enable\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1124
    const-string v16, "echo \"umount /sys/kernel/debug\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 1125
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1113
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1127
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_8
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_1a

    .line 1164
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesvsync:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1166
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 1169
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 1172
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xd

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1173
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1174
    const-string v16, "sed -i \'/Re-Enable Vsync/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1175
    const-string v16, "sed -i \'/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1176
    const-string v16, "sed -i \'/sys/kernel/debug/msm_fb/0/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1177
    const-string v16, "sed -i \'/umount /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1178
    const-string v16, "sed -i \'/busybox mount -t debugfs debugfs /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1179
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1180
    const-string v16, "echo \"\n### Pimp my Rom : Re-Enable Vsync\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1181
    const-string v16, "echo \"mount -o remount,rw /sys /sys\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1182
    const-string v16, "echo \"busybox mount -t debugfs debugfs /sys/kernel/debug\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1183
    const-string v16, "echo \"echo \'1\' > /sys/kernel/debug/msm_fb/0/vsync_enable\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 1184
    const-string v16, "echo \"umount /sys/kernel/debug\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 1185
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1172
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1187
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_9
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_1d

    .line 1225
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->normsleep:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 1227
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 1230
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 1233
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1234
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1235
    const-string v16, "sed -i \'/Disable Normalized Sleeper/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1236
    const-string v16, "sed -i \'/NO_NORMALIZED_SLEEPER/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1237
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1238
    const-string v16, "echo \"\n### Pimp my Rom : Disable Normalized Sleeper\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1239
    const-string v16, "echo \"echo NO_NORMALIZED_SLEEPER > /sys/kernel/debug/sched_features;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1240
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1233
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1242
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_a
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_20

    .line 1280
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentsleep:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 1282
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_23

    .line 1285
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 1288
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1289
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1290
    const-string v16, "sed -i \'/Disable Gentle Fair Sleeper/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1291
    const-string v16, "sed -i \'/NO_GENTLE_FAIR_SLEEPERS/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1292
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1293
    const-string v16, "echo \"\n### Pimp my Rom : Disable Gentle Fair Sleeper\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1294
    const-string v16, "echo \"echo NO_GENTLE_FAIR_SLEEPERS > /sys/kernel/debug/sched_features;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1295
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1288
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1297
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_b
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_23

    .line 1334
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->newsleep:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 1336
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 1339
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_24

    .line 1342
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1343
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1344
    const-string v16, "sed -i \'/Disable New Fair Sleepers/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1345
    const-string v16, "sed -i \'/NO_NEW_FAIR_SLEEPERS/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1346
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1347
    const-string v16, "echo \"\n### Pimp my Rom : Disable New Fair Sleeper\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1348
    const-string v16, "echo \"echo NO_NEW_FAIR_SLEEPERS > /sys/kernel/debug/sched_features;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1349
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1342
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1351
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_c
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_25
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_c} :catch_26

    .line 1394
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_b
    :goto_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1395
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1397
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1398
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1399
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksKernel$1$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksKernel$1$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel$1;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1408
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksKernel$1$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksKernel$1$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel$1;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1410
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1411
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1415
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1416
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 1417
    const-string v13, "Please Wait..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1420
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1421
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Applying Selected Tweaks..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1425
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1427
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 1428
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/TweaksKernel$1$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/TweaksKernel$1$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel$1;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1433
    const-wide/16 v14, 0x9c4

    .line 1428
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1436
    return-void

    .line 624
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 626
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 627
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 629
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 630
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 632
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 639
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 640
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 641
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 642
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 643
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 644
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 651
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 652
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 653
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 654
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 655
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 691
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v7

    .line 693
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 694
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 696
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 697
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 699
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 705
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 706
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 707
    .local v10, text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 708
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 709
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 716
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 717
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 718
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 719
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 720
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 754
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_6
    move-exception v7

    .line 756
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 757
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 759
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 760
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 762
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 768
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 769
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 770
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 771
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 772
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 779
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 780
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 781
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 782
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 783
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 819
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9
    move-exception v7

    .line 821
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 822
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v7

    .line 824
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 825
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 827
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 833
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 834
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 835
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 836
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 837
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 844
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 845
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 846
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 847
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 848
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 881
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c
    move-exception v7

    .line 883
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 884
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v7

    .line 886
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 887
    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 889
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 895
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 896
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 897
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 898
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 899
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 906
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 907
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 908
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 909
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 910
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 946
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f
    move-exception v7

    .line 948
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 949
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .line 951
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 952
    .end local v7           #e:Ljava/io/IOException;
    :catch_11
    move-exception v7

    .line 954
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 960
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 961
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 962
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 963
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 964
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 971
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 972
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 973
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 974
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 975
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1007
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_12
    move-exception v7

    .line 1009
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1010
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v7

    .line 1012
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1013
    .end local v7           #e:Ljava/io/IOException;
    :catch_14
    move-exception v7

    .line 1015
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 1021
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1022
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1023
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1024
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1025
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1032
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1033
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1034
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1035
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1036
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1067
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_15
    move-exception v7

    .line 1069
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 1070
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v7

    .line 1072
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1073
    .end local v7           #e:Ljava/io/IOException;
    :catch_17
    move-exception v7

    .line 1075
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 1081
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1082
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1083
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1084
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1085
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 1092
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1093
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1094
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1095
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1096
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 1128
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_18
    move-exception v7

    .line 1130
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 1131
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v7

    .line 1133
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1134
    .end local v7           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v7

    .line 1136
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 1142
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1143
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1144
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1145
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1146
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1153
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1154
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1155
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1156
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1157
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1188
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1b
    move-exception v7

    .line 1190
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 1191
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v7

    .line 1193
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1194
    .end local v7           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v7

    .line 1196
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 1202
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1203
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1204
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1205
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1206
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 1213
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1214
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1215
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1216
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1217
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 1243
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v7

    .line 1245
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 1246
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v7

    .line 1248
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 1249
    .end local v7           #e:Ljava/io/IOException;
    :catch_20
    move-exception v7

    .line 1251
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_a

    .line 1257
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1258
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1259
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1260
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1261
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 1268
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1269
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1270
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1271
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1272
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 1298
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_21
    move-exception v7

    .line 1300
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_b

    .line 1301
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_22
    move-exception v7

    .line 1303
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 1304
    .end local v7           #e:Ljava/io/IOException;
    :catch_23
    move-exception v7

    .line 1306
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_b

    .line 1312
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1313
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1314
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1315
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1316
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    .line 1323
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1324
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1325
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1326
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1327
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    .line 1352
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_24
    move-exception v7

    .line 1354
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_c

    .line 1355
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_25
    move-exception v7

    .line 1357
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 1358
    .end local v7           #e:Ljava/io/IOException;
    :catch_26
    move-exception v7

    .line 1360
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_c

    .line 1372
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1373
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1374
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1375
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1376
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 1383
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1384
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1385
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1386
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1387
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c
.end method
