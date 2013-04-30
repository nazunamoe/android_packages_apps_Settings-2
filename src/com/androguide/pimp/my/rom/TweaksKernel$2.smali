.class Lcom/androguide/pimp/my/rom/TweaksKernel$2;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksKernel$2;)Lcom/androguide/pimp/my/rom/TweaksKernel;
    .locals 1
    .parameter

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 1453
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1456
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1459
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1460
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1461
    const-string v16, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1462
    const-string v16, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1463
    const-string v16, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1464
    const-string v16, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1465
    const-string v16, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1466
    const-string v16, "cd /system/etc"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1467
    const-string v16, "sh shebang.sh"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1468
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1469
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1470
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1459
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1475
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

    .line 1516
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondemand:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1518
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1521
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1524
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1525
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1526
    const-string v16, "sed -i \'/Ondemand Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1527
    const-string v16, "sed -i \'/ondemand/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1528
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1529
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1524
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1531
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

    .line 1568
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondemandx:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1570
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1573
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1576
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1577
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1578
    const-string v16, "sed -i \'/Ondemandx Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1579
    const-string v16, "sed -i \'/ondemandx/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1580
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1581
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1576
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1583
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

    .line 1620
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->smartassv2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 1622
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1625
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1628
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1629
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1630
    const-string v16, "sed -i \'/SmartassV2 Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1631
    const-string v16, "sed -i \'/smartass/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1632
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1633
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1628
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1635
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

    .line 1674
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->interactive:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1676
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1679
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1682
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1683
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1684
    const-string v16, "sed -i \'/Interactive Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1685
    const-string v16, "sed -i \'/interactive/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1686
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1687
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1682
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1689
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

    .line 1727
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->conservative:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1729
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1732
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1735
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1736
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1737
    const-string v16, "sed -i \'/Conservative Governor Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1738
    const-string v16, "sed -i \'/conservative/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1739
    const-string v16, "sed -i \'/fi;       /d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1740
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1741
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1735
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1743
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

    .line 1784
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->iostats:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 1786
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1789
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1792
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1793
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1794
    const-string v16, "sed -i \'/Disable I/O Stats/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1795
    const-string v16, "sed -i \'/iostats/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1796
    const-string v16, "sed -i \'/fi;  /d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1797
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1798
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1792
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1800
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

    .line 1839
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->sysctlio:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1841
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1844
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1847
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1848
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1849
    const-string v16, "sed -i \'/Default I/O Scheduler Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1850
    const-string v16, "sed -i \'/nr_requests/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1851
    const-string v16, "sed -i \'/$i/queue/rotational;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1852
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1853
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1847
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1855
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

    .line 1894
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->novsync:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1896
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1899
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1902
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1903
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1904
    const-string v16, "sed -i \'/Disable Vsync/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1905
    const-string v16, "sed -i \'/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1906
    const-string v16, "sed -i \'/sys/kernel/debug/msm_fb/0/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1907
    const-string v16, "sed -i \'/umount /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1908
    const-string v16, "sed -i \'/busybox mount -t debugfs debugfs /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1909
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1910
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1902
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1912
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

    .line 1949
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesvsync:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1951
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 1954
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 1957
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1958
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1959
    const-string v16, "sed -i \'/Re-Enable Vsync/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1960
    const-string v16, "sed -i \'/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1961
    const-string v16, "sed -i \'/sys/kernel/debug/msm_fb/0/vsync_enable/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1962
    const-string v16, "sed -i \'/umount /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1963
    const-string v16, "sed -i \'/busybox mount -t debugfs debugfs /sys/kernel/debug/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1964
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1965
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1957
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1967
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

    .line 2005
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->normsleep:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 2007
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 2010
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_20

    .line 2013
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 2014
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 2015
    const-string v16, "sed -i \'/Disable Normalized Sleeper/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 2016
    const-string v16, "sed -i \'/NO_NORMALIZED_SLEEPER/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 2017
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 2018
    const-string v16, "busybox mount -o ro,remount /system"

    .line 2013
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2020
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

    .line 2058
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentsleep:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 2060
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_23

    .line 2063
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 2066
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 2067
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 2068
    const-string v16, "sed -i \'/Disable Gentle Fair Sleeper/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 2069
    const-string v16, "sed -i \'/NO_GENTLE_FAIR_SLEEPERS/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 2070
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 2071
    const-string v16, "busybox mount -o ro,remount /system"

    .line 2066
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2073
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

    .line 2110
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_a
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksKernel;->newsleep:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 2112
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_25

    .line 2115
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_24

    .line 2118
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 2119
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 2120
    const-string v16, "sed -i \'/Disable New Fair Sleepers/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 2121
    const-string v16, "sed -i \'/NO_NEW_FAIR_SLEEPERS/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 2122
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 2123
    const-string v16, "busybox mount -o ro,remount /system"

    .line 2118
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 2125
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

    .line 2167
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_b
    :goto_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2168
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2170
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 2171
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 2172
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksKernel$2$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksKernel$2$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel$2;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 2181
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksKernel$2$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksKernel$2$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel$2;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2183
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2184
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2189
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2190
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 2191
    const-string v13, "Please Wait..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2194
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2195
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Removing Selected Tweaks..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2196
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 2199
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 2201
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 2202
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/TweaksKernel$2$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/TweaksKernel$2$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel$2;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 2207
    const-wide/16 v14, 0x9c4

    .line 2202
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2209
    return-void

    .line 1476
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 1478
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1479
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 1481
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1482
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 1484
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 1491
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1492
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 1493
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1494
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1495
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1496
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1503
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1504
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 1505
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1506
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1507
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1532
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v7

    .line 1534
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1535
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 1537
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1538
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 1540
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 1546
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1547
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1548
    .local v10, text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1549
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1550
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1557
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1558
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1559
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1560
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1561
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1584
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_6
    move-exception v7

    .line 1586
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1587
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 1589
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1590
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 1592
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 1598
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1599
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1600
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1601
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1602
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1609
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1610
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1611
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1612
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1613
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1636
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9
    move-exception v7

    .line 1638
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1639
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v7

    .line 1641
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1642
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 1644
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 1650
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1651
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1652
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1653
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1654
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1661
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1662
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1663
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1664
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1665
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1690
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c
    move-exception v7

    .line 1692
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 1693
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v7

    .line 1695
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1696
    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 1698
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 1704
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1705
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1706
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1707
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1708
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1715
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1716
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1717
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1718
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1719
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1744
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f
    move-exception v7

    .line 1746
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1747
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .line 1749
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1750
    .end local v7           #e:Ljava/io/IOException;
    :catch_11
    move-exception v7

    .line 1752
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 1758
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1759
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1760
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1761
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1762
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1769
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1770
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1771
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1772
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1773
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    .line 1801
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_12
    move-exception v7

    .line 1803
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1804
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v7

    .line 1806
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1807
    .end local v7           #e:Ljava/io/IOException;
    :catch_14
    move-exception v7

    .line 1809
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 1815
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1816
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1817
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1818
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1819
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1826
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1827
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1828
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1829
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1830
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1856
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_15
    move-exception v7

    .line 1858
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 1859
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v7

    .line 1861
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1862
    .end local v7           #e:Ljava/io/IOException;
    :catch_17
    move-exception v7

    .line 1864
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 1870
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1871
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1872
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1873
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1874
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 1881
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1882
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1883
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1884
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1885
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 1913
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_18
    move-exception v7

    .line 1915
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 1916
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v7

    .line 1918
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1919
    .end local v7           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v7

    .line 1921
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 1927
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1928
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1929
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1930
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1931
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1938
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1939
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1940
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1941
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1942
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1968
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1b
    move-exception v7

    .line 1970
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 1971
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v7

    .line 1973
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1974
    .end local v7           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v7

    .line 1976
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 1982
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1983
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 1984
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1985
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1986
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 1993
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1994
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 1995
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1996
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1997
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 2021
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v7

    .line 2023
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 2024
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v7

    .line 2026
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 2027
    .end local v7           #e:Ljava/io/IOException;
    :catch_20
    move-exception v7

    .line 2029
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_a

    .line 2035
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2036
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 2037
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 2038
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2039
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 2046
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_21
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2047
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 2048
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 2049
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2050
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 2074
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_21
    move-exception v7

    .line 2076
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_b

    .line 2077
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_22
    move-exception v7

    .line 2079
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 2080
    .end local v7           #e:Ljava/io/IOException;
    :catch_23
    move-exception v7

    .line 2082
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_b

    .line 2088
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_22
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2089
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 2090
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 2091
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2092
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    .line 2099
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2100
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 2101
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 2102
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2103
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    .line 2126
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_24
    move-exception v7

    .line 2128
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_c

    .line 2129
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_25
    move-exception v7

    .line 2131
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 2132
    .end local v7           #e:Ljava/io/IOException;
    :catch_26
    move-exception v7

    .line 2134
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_c

    .line 2146
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2147
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Are you root ?"

    .line 2148
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 2149
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2150
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 2157
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v10           #text:Ljava/lang/CharSequence;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksKernel;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksKernel;->access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2158
    .restart local v4       #context:Landroid/content/Context;
    const-string v10, "Busybox not found. Please install it."

    .line 2159
    .restart local v10       #text:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 2160
    .restart local v6       #duration:I
    invoke-static {v4, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 2161
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c
.end method
