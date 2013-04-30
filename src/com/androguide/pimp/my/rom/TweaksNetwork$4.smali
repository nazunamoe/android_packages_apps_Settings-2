.class Lcom/androguide/pimp/my/rom/TweaksNetwork$4;
.super Ljava/lang/Object;
.source "TweaksNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksNetwork;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork$4;)Lcom/androguide/pimp/my/rom/TweaksNetwork;
    .locals 1
    .parameter

    .prologue
    .line 643
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 651
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 654
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 657
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 658
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 659
    const-string v16, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 660
    const-string v16, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 661
    const-string v16, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 662
    const-string v16, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 663
    const-string v16, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 664
    const-string v16, "cd /system/etc"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 665
    const-string v16, "sh shebang.sh"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 666
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 667
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 668
    const-string v16, "busybox mount -o ro,remount /system"

    .line 657
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 673
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

    .line 718
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->wifi1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 720
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 723
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 726
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 728
    const-string v16, "sed -i \'/Wifi connect speed/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 729
    const-string v16, "sed -i \'/ro.mot.eri.losalert.delay=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 730
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 731
    const-string v16, "echo \"\n### Pimp my Rom : Wifi connect speed tweak \" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 732
    const-string v16, "echo \"ro.mot.eri.losalert.delay=900\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 733
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "busybox mount -o ro,remount /system"

    .line 726
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 735
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

    .line 766
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 768
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 771
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 774
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xc

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 775
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 776
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 777
    const-string v16, "sed -i \'/Video Streaming Tweak/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 778
    const-string v16, "sed -i \'/media.stagefright.enable-/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 779
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 780
    const-string v16, "echo \"\n### Pimp my Rom : Video Streaming Tweak \" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 781
    const-string v16, "echo \"media.stagefright.enable-player=true\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 782
    const-string v16, "echo \"media.stagefright.enable-meta=true\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 783
    const-string v16, "echo \"media.stagefright.enable-scan=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 784
    const-string v16, "echo \"media.stagefright.enable-http=true\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 785
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    const-string v16, "busybox mount -o ro,remount /system"

    .line 774
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 787
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

    .line 819
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 821
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 824
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 827
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 828
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 829
    const-string v16, "sed -i \'/Enable HSUPA Network Mode/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 830
    const-string v16, "sed -i \'/ro.ril.hsxpa=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 831
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 832
    const-string v16, "echo \"\n### Pimp my Rom : Enable HSUPA Network Mode\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 833
    const-string v16, "echo \"ro.ril.hsxpa=3\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 834
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const-string v16, "busybox mount -o ro,remount /system"

    .line 827
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 836
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

    .line 866
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 868
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 871
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 874
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x11

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 875
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 876
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 877
    const-string v16, "sed -i \'/### Pimp my Rom : Block Redirects/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 878
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 879
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.accept_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 880
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.accept_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 881
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.secure_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 882
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.secure_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 884
    const-string v16, "echo \"### Pimp my Rom : Block Redirects\n\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 885
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.all.accept_redirects=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 886
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.default.accept_redirects=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 887
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.all.secure_redirects=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 888
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.default.secure_redirects=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 890
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 891
    const-string v16, "chmod 777 /system/etc/init.d/*"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 892
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    const-string v16, "busybox mount -o ro,remount /system"

    .line 874
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 894
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

    .line 924
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 926
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 929
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 932
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 933
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 934
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 935
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 936
    const-string v16, "sed -i \'/### Pimp my Rom : Block Source-Routing/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 937
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 938
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.accept_source_route=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 939
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.accept_source_route=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 941
    const-string v16, "echo \"### Pimp my Rom : Block Source-Routing\n\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 942
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.default.accept_source_route=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 943
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.all.accept_source_route=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 944
    const-string v16, "chmod 777 /system/etc/init.d/*"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 945
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 946
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const-string v16, "busybox mount -o ro,remount /system"

    .line 932
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 950
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

    .line 979
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 981
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 984
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 987
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 988
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 989
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 990
    const-string v16, "sed -i \'/Faster DNS Resolution/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 991
    const-string v16, "sed -i \'/net.dns1=8.8.8.8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 992
    const-string v16, "sed -i \'/net.dns2=8.8.4.4/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 993
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 994
    const-string v16, "echo \"\n### Pimp my Rom : Faster DNS Resolution Tweaks\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 995
    const-string v16, "echo \"net.dns1=8.8.8.8\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 996
    const-string v16, "echo \"net.dns2=8.8.4.4\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 997
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "busybox mount -o ro,remount /system"

    .line 987
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 999
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

    .line 1028
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1030
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1033
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1036
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x14

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1037
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1038
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1039
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1040
    const-string v16, "sed -i \'/### Pimp my Rom : IPv4 Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1041
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1042
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_timestamps=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1043
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_sack=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1044
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_fack=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1045
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_congestion_control=cubic;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1046
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_window_scaling=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1049
    const-string v16, "echo \"### Pimp my Rom : IPv4 Tweaks\n\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 1050
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_timestamps=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 1051
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_sack=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 1052
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_fack=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 1053
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_congestion_control=cubic;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 1054
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_window_scaling=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 1055
    const-string v16, "chmod 777 /system/etc/init.d/*"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 1056
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 1057
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    const-string v16, "busybox mount -o ro,remount /system"

    .line 1036
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1059
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

    .line 1088
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1090
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1093
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1096
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1097
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1098
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1099
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1100
    const-string v16, "sed -i \'/### Pimp my Rom : Avoid Time-Wait/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1101
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1102
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_tw_recycle=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1103
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_tw_reuse=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1105
    const-string v16, "echo \"### Pimp my Rom : Avoid Time-Wait\n\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1106
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_tw_recycle=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1107
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_tw_reuse=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1108
    const-string v16, "chmod 777 /system/etc/init.d/*"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 1109
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 1110
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    const-string v16, "busybox mount -o ro,remount /system"

    .line 1096
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1112
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

    .line 1141
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1143
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1146
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1149
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x28

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1150
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1151
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1152
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1153
    const-string v16, "sed -i \'/### Pimp my Rom : Protection against SYN Attacks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1154
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1155
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_syncookies=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1156
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.rp_filter=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1157
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.rp_filter=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1158
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_synack_retries=2;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1159
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_syn_retries=2;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1160
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_max_syn_backlog=1024;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 1161
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_max_tw_buckets=16384;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 1162
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.icmp_echo_ignore_all=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 1163
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.icmp_ignore_bogus_error_responses=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 1164
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_no_metrics_save=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 1165
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_fin_timeout=15;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 1166
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_keepalive_intvl=30;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 1167
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_keepalive_probes=5;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 1168
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_keepalive_time=1800;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 1169
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.ip_forward=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 1171
    const-string v16, "echo \"### Pimp my Rom : Protection against SYN Attacks\n\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    .line 1172
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_syncookies=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x16

    .line 1173
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.all.rp_filter=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x17

    .line 1174
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.conf.default.rp_filter=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x18

    .line 1175
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_synack_retries=2;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x19

    .line 1176
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_syn_retries=2;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x1a

    .line 1177
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_max_syn_backlog=1024;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    .line 1178
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_max_tw_buckets=16384;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x1c

    .line 1179
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.icmp_echo_ignore_all=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x1d

    .line 1180
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.icmp_ignore_bogus_error_responses=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x1e

    .line 1181
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_no_metrics_save=1;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x1f

    .line 1182
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_fin_timeout=15;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x20

    .line 1183
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_keepalive_intvl=30;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x21

    .line 1184
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_keepalive_probes=5;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x22

    .line 1185
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.tcp_keepalive_time=1800;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x23

    .line 1186
    const-string v16, "echo \"busybox sysctl -e -w net.ipv4.ip_forward=0;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x24

    .line 1187
    const-string v16, "chmod 777 /system/etc/init.d/*"

    aput-object v16, v14, v15

    const/16 v15, 0x25

    .line 1188
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x26

    .line 1189
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x27

    const-string v16, "busybox mount -o ro,remount /system"

    .line 1149
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1191
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

    .line 1220
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 1222
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1225
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1228
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1229
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1230
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1231
    const-string v16, "sed -i \'/Interface Tweaks/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1232
    const-string v16, "sed -i \'/net.ppp0.dns1=8.8.8.8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1233
    const-string v16, "sed -i \'/net.ppp0.dns2=8.8.4.4/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1234
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1235
    const-string v16, "echo \"\n### Pimp my Rom : ppp0 Interface Tweaks\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1236
    const-string v16, "echo \"net.ppp0.dns1=8.8.8.8\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1237
    const-string v16, "echo \"net.ppp0.dns2=8.8.4.4\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1238
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "busybox mount -o ro,remount /system"

    .line 1228
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1240
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

    .line 1270
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_9
    :goto_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 1271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    .line 1270
    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1272
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1274
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1275
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1276
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksNetwork$4$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$4$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork$4;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1285
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksNetwork$4$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$4$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork$4;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1287
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1288
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1292
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1293
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 1294
    const-string v13, "Please Wait..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1297
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1298
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Applying Selected Tweaks..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1302
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1304
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 1305
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/TweaksNetwork$4$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/TweaksNetwork$4$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork$4;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1310
    const-wide/16 v14, 0xfa0

    .line 1305
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1317
    return-void

    .line 674
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 676
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 677
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 679
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 680
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 682
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 689
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 690
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 691
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 692
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 693
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 701
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 702
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 703
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 704
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 705
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 736
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v7

    .line 738
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 739
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 741
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 742
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 744
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 788
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :catch_6
    move-exception v7

    .line 790
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 791
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 793
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 794
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 796
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 802
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 808
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 837
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9
    move-exception v7

    .line 839
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 840
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v7

    .line 842
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 843
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 845
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 851
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 857
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 895
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c
    move-exception v7

    .line 897
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 898
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v7

    .line 900
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 901
    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 903
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 909
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 915
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 951
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f
    move-exception v7

    .line 953
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 954
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .line 956
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 957
    .end local v7           #e:Ljava/io/IOException;
    :catch_11
    move-exception v7

    .line 959
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 965
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 971
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1000
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_12
    move-exception v7

    .line 1002
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1003
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v7

    .line 1005
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1006
    .end local v7           #e:Ljava/io/IOException;
    :catch_14
    move-exception v7

    .line 1008
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 1014
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1020
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1060
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_15
    move-exception v7

    .line 1062
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 1063
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v7

    .line 1065
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1066
    .end local v7           #e:Ljava/io/IOException;
    :catch_17
    move-exception v7

    .line 1068
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 1074
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1080
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1113
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_18
    move-exception v7

    .line 1115
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 1116
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v7

    .line 1118
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1119
    .end local v7           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v7

    .line 1121
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 1127
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1133
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1192
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1b
    move-exception v7

    .line 1194
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 1195
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v7

    .line 1197
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1198
    .end local v7           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v7

    .line 1200
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 1206
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1212
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1241
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v7

    .line 1243
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 1244
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v7

    .line 1246
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 1247
    .end local v7           #e:Ljava/io/IOException;
    :catch_20
    move-exception v7

    .line 1249
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_a

    .line 1259
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1265
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_a
.end method
