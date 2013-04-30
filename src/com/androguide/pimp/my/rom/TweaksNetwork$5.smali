.class Lcom/androguide/pimp/my/rom/TweaksNetwork$5;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork$5;)Lcom/androguide/pimp/my/rom/TweaksNetwork;
    .locals 1
    .parameter

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 1332
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1335
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 1338
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1339
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1340
    const-string v16, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1341
    const-string v16, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1342
    const-string v16, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1343
    const-string v16, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1344
    const-string v16, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1345
    const-string v16, "cd /system/etc"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1346
    const-string v16, "sh shebang.sh"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1347
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1338
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1352
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

    .line 1397
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->wifi1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 1399
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1402
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1405
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1407
    const-string v16, "sed -i \'/Wifi connect speed/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1408
    const-string v16, "sed -i \'/ro.mot.eri.losalert.delay=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1409
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1410
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1405
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1412
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

    .line 1443
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 1445
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1448
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1451
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1452
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1453
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1454
    const-string v16, "sed -i \'/Video Streaming Tweak/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1455
    const-string v16, "sed -i \'/media.stagefright.enable-/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1456
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1457
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1451
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1459
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

    .line 1491
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa1:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 1493
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1496
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1499
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1500
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1501
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1502
    const-string v16, "sed -i \'/Enable HSUPA Network Mode/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1503
    const-string v16, "sed -i \'/ro.ril.hsxpa=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1504
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1505
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1499
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1507
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

    .line 1537
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 1539
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 1542
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 1545
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1546
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1547
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1548
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1549
    const-string v16, "sed -i \'/### Pimp my Rom : Block Redirects/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1550
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1551
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.accept_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1552
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.accept_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1553
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.secure_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1554
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.secure_redirects=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1555
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1556
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1545
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1558
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

    .line 1588
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 1590
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 1593
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 1596
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1597
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1598
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1599
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1600
    const-string v16, "sed -i \'/### Pimp my Rom : Block Source-Routing/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1601
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1602
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.accept_source_route=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1603
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.accept_source_route=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1604
    const-string v16, "sed -i \'/^$/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1605
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1596
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1609
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

    .line 1638
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 1640
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 1643
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 1646
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1647
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1648
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1649
    const-string v16, "sed -i \'/Faster DNS Resolution/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1650
    const-string v16, "sed -i \'/net.dns1=8.8.8.8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1651
    const-string v16, "sed -i \'/net.dns2=8.8.4.4/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1652
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1653
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1646
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1655
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

    .line 1684
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1686
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1689
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 1692
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1693
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1694
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1695
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1696
    const-string v16, "sed -i \'/### Pimp my Rom : IPv4 Tweaks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1697
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1698
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_timestamps=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1699
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_sack=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1700
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_fack=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1701
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_congestion_control=cubic;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1702
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_window_scaling=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1703
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1692
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1705
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

    .line 1734
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 1736
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1739
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1742
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1743
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1744
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1745
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1746
    const-string v16, "sed -i \'/### Pimp my Rom : Avoid Time-Wait/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1747
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1748
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_tw_recycle=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1749
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_tw_reuse=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1750
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1742
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1752
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

    .line 1781
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 1783
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1786
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1789
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x15

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1790
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1791
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1792
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1793
    const-string v16, "sed -i \'/### Pimp my Rom : Protection against SYN Attacks/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1794
    const-string v16, "sed -i \'/chmod -R 777 /system/etc/sysctl.conf/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1795
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_syncookies=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1796
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.all.rp_filter=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1797
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.conf.default.rp_filter=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1798
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_synack_retries=2;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 1799
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_syn_retries=2;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 1800
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_max_syn_backlog=1024;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 1801
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_max_tw_buckets=16384;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 1802
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.icmp_echo_ignore_all=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 1803
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.icmp_ignore_bogus_error_responses=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 1804
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_no_metrics_save=1;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 1805
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_fin_timeout=15;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 1806
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_keepalive_intvl=30;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 1807
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_keepalive_probes=5;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 1808
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.tcp_keepalive_time=1800;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 1809
    const-string v16, "sed -i \'/busybox sysctl -e -w net.ipv4.ip_forward=0;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 1810
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1789
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1812
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

    .line 1841
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp2:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 1843
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1846
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1849
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1850
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1851
    const-string v16, "sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/S99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1852
    const-string v16, "sed -i \'/Interface Tweaks/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1853
    const-string v16, "sed -i \'/net.ppp0.dns1=8.8.8.8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1854
    const-string v16, "sed -i \'/net.ppp0.dns2=8.8.4.4/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1855
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1856
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1849
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1858
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

    .line 1887
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_9
    :goto_a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 1888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    .line 1887
    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1889
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1891
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1892
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1893
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksNetwork$5$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$5$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork$5;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1902
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksNetwork$5$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$5$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork$5;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1904
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1905
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1908
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1909
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 1910
    const-string v13, "Un-Pimpin\'..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1911
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1912
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Removing Selected Tweaks..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1914
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1915
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/TweaksNetwork$5$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/TweaksNetwork$5$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork$5;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1917
    const-wide/16 v14, 0xfa0

    .line 1915
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1919
    return-void

    .line 1353
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 1355
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1356
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 1358
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1359
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 1361
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 1368
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1369
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 1370
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1371
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1372
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1380
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1381
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 1382
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 1383
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1384
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1413
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v7

    .line 1415
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1416
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 1418
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1419
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 1421
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 1460
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :catch_6
    move-exception v7

    .line 1462
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1463
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 1465
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1466
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 1468
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 1474
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1480
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1508
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9
    move-exception v7

    .line 1510
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1511
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v7

    .line 1513
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1514
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 1516
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 1522
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1528
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1559
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c
    move-exception v7

    .line 1561
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 1562
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v7

    .line 1564
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1565
    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 1567
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 1573
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1579
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1610
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f
    move-exception v7

    .line 1612
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1613
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .line 1615
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1616
    .end local v7           #e:Ljava/io/IOException;
    :catch_11
    move-exception v7

    .line 1618
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 1624
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1630
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1656
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_12
    move-exception v7

    .line 1658
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1659
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v7

    .line 1661
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1662
    .end local v7           #e:Ljava/io/IOException;
    :catch_14
    move-exception v7

    .line 1664
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 1670
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1676
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1706
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_15
    move-exception v7

    .line 1708
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 1709
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v7

    .line 1711
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1712
    .end local v7           #e:Ljava/io/IOException;
    :catch_17
    move-exception v7

    .line 1714
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 1720
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1726
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1753
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_18
    move-exception v7

    .line 1755
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 1756
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v7

    .line 1758
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1759
    .end local v7           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v7

    .line 1761
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 1767
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1773
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1813
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1b
    move-exception v7

    .line 1815
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 1816
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v7

    .line 1818
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1819
    .end local v7           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v7

    .line 1821
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 1827
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1833
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1859
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v7

    .line 1861
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 1862
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v7

    .line 1864
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 1865
    .end local v7           #e:Ljava/io/IOException;
    :catch_20
    move-exception v7

    .line 1867
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_a

    .line 1877
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1883
    :cond_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_a
.end method
