.class Lcom/androguide/pimp/my/rom/TweaksMisc$1;
.super Ljava/lang/Object;
.source "TweaksMisc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksMisc$1;)Lcom/androguide/pimp/my/rom/TweaksMisc;
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 25
    .parameter "v"

    .prologue
    .line 438
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 441
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 444
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 445
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 446
    const-string v23, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 447
    const-string v23, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 448
    const-string v23, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 449
    const-string v23, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 450
    const-string v23, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 451
    const-string v23, "cd /system/etc"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 452
    const-string v23, "sh shebang.sh"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 453
    const-string v23, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 454
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 455
    const-string v23, "busybox mount -o ro,remount /system"

    .line 444
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 460
    .local v5, command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_0
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 504
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sqlite3:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 506
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 509
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 512
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x10

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 513
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 514
    const-string v23, "chmod 777 /system/xbin/sqlite3"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 515
    const-string v23, "sed -i \'/Optimization of all sqlite3 databases each boot/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 516
    const-string v23, "sed -i \'/for sqlite3 in /d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 517
    const-string v23, "sed -i \'/VACUUM;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 518
    const-string v23, "sed -i \'/.db/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 519
    const-string v23, "sed -i \'/REINDEX;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 520
    const-string v23, "sed -i \'/-iname \"*.db/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 521
    const-string v23, "echo \"### Pimp my Rom : Optimization of all sqlite3 databases each boot\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 522
    const-string v23, "echo \"for sqlite3 in \\ \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 523
    const-string v23, "echo \"`busybox find /data -iname \"*.db\"`; do \\ \" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    .line 524
    const-string v23, "echo \"/system/xbin/sqlite3 $sqlite3 \'VACUUM;\';\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xc

    .line 525
    const-string v23, "echo \"/system/xbin/sqlite3 $sqlite3 \'REINDEX;\'; done;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xd

    .line 526
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xe

    .line 527
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xf

    const-string v23, "busybox mount -o ro,remount /system"

    .line 512
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 529
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_1
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 560
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext4:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 562
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 565
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 568
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 569
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 570
    const-string v23, "sed -i \'/Ext4 File-Systems optimization & instant-mount/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 571
    const-string v23, "sed -i \'/nodiratime/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 572
    const-string v23, "echo \"### Pimp my Rom : Ext4 File-Systems optimization & instant-mount\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 573
    const-string v23, "echo \"busybox mount -o remount,noatime,noauto_da_alloc,nodiratime,barrier =0,nobh /system\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 574
    const-string v23, "echo \"busybox mount -o remount,noatime,noauto_da_alloc,nosuid,nodev,nodir atime,barrier=0,nobh /data\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 575
    const-string v23, "echo \"busybox mount -o remount,noatime,noauto_da_alloc,nosuid,nodev,nodir atime,barrier=0,nobh /cache\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 576
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    const-string v23, "busybox mount -o ro,remount /system"

    .line 568
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 578
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_2
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_8

    .line 606
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->intsd:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 608
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 611
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x19

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 612
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 613
    const-string v23, "busybox mount -o rw,remount /sys"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 614
    const-string v23, "sed -i \'/External SD/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 615
    const-string v23, "sed -i \'/mtdblock0/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 616
    const-string v23, "sed -i \'/bdi/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 617
    const-string v23, "echo \"### Pimp my Rom : External SD I/O Tweaks\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 618
    const-string v23, "echo \"echo \"8\" > /sys/block/mtdblock0/bdi/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 619
    const-string v23, "echo \"echo \"8\" > /sys/block/mtdblock1/bdi/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 620
    const-string v23, "echo \"echo \"8\" > /sys/block/mtdblock2/bdi/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 621
    const-string v23, "echo \"echo \"8\" > /sys/block/mtdblock3/bdi/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 622
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:0/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    .line 623
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:1/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xc

    .line 624
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:2/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xd

    .line 625
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:3/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xe

    .line 626
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:4/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xf

    .line 627
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:5/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x10

    .line 628
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:6/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x11

    .line 629
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:7/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x12

    .line 630
    const-string v23, "echo \"echo \"4096\" > /sys/devices/virtual/bdi/179:0/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x13

    .line 631
    const-string v23, "echo \"echo \"4096\" > /sys/devices/virtual/bdi/default/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x14

    .line 632
    const-string v23, "echo \"echo \"97\" > /sys/devices/virtual/bdi/179:0/max_ratio\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x15

    .line 633
    const-string v23, "echo \"echo \"97\" > /sys/devices/virtual/bdi/default/max_ratio\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x16

    .line 634
    const-string v23, "echo \"echo \"4096\" > /sys/devices/virtual/bdi/179:0/read_ahead_kb;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x17

    .line 635
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x18

    const-string v23, "busybox mount -o ro,remount /system"

    .line 611
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 637
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_3
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_b

    .line 665
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->extsd:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 667
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 670
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 673
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 674
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 675
    const-string v23, "busybox mount -o rw,remount /sys"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 676
    const-string v23, "sed -i \'/External SD/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 677
    const-string v23, "sed -i \'/bdi/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 678
    const-string v23, "echo \"### Pimp my Rom : External SD I/O Tweaks\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 679
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:0/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 680
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:1/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 681
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:2/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 682
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:3/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 683
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:4/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 684
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:5/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    .line 685
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:6/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xc

    .line 686
    const-string v23, "echo \"echo \"128\" > /sys/devices/virtual/bdi/7:7/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xd

    .line 687
    const-string v23, "echo \"echo \"4096\" > /sys/devices/virtual/bdi/179:0/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xe

    .line 688
    const-string v23, "echo \"echo \"4096\" > /sys/devices/virtual/bdi/default/read_ahead_kb\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0xf

    .line 689
    const-string v23, "echo \"echo \"97\" > /sys/devices/virtual/bdi/179:0/max_ratio\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x10

    .line 690
    const-string v23, "echo \"echo \"97\" > /sys/devices/virtual/bdi/default/max_ratio\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x11

    .line 691
    const-string v23, "echo \"echo \"4096\" > /sys/devices/virtual/bdi/179:0/read_ahead_kb;\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x12

    .line 692
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x13

    const-string v23, "busybox mount -o ro,remount /system"

    .line 673
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 694
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_4
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_e

    .line 724
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zipalign:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 726
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 729
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 732
    const-string v19, "http://gratos-life.fr/pimpmyrom/zipalign/S90zipalign"

    .line 734
    .local v19, url:Ljava/lang/String;
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 735
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 736
    const-string v23, "cd /system/xbin"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 737
    const-string v23, "wget http://gratos-life.fr/pimpmyrom/zipalign/xbin/zipalign"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 738
    const-string v23, "chmod 766 zipalign"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 739
    const-string v23, "cd ../"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 740
    const-string v23, "cd etc/init.d"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 741
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "wget "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 742
    const-string v23, "chmod 777 /system/etc/init.d/*"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 743
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    const-string v23, "busybox mount -o ro,remount /system"

    .line 734
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 745
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_5
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_11

    .line 775
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v19           #url:Ljava/lang/String;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->battery:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 777
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 780
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 783
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 784
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 785
    const-string v23, "sed -i \'/Battery Savings/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 786
    const-string v23, "sed -i \'/irty_expire_centisecs/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 787
    const-string v23, "sed -i \'/irty_writeback_centisecs/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 788
    const-string v23, "echo \"### Pimp my Rom : Battery Savings\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 789
    const-string v23, "echo \"echo \"500\" > /proc/sys/vm/dirty_expire_centisecs\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 790
    const-string v23, "echo \"echo \"1000\" > /proc/sys/vm/dirty_writeback_centisecs\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 791
    const-string v23, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    const-string v23, "busybox mount -o ro,remount /system"

    .line 783
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 795
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_6
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_14

    .line 824
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->camera:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 826
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 829
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 832
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x1a

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 833
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 834
    const-string v23, "sed -i \'/Increase photo and video recording quality/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 835
    const-string v23, "sed -i \'/ro.media.dec.jpeg.memcap/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 836
    const-string v23, "sed -i \'/ro.media.enc.hprof.vid.bps/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 837
    const-string v23, "sed -i \'/ro.media.capture.maxres/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 838
    const-string v23, "sed -i \'/ro.media.panorama.defres/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 839
    const-string v23, "sed -i \'/ro.media.panorama.frameres/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 840
    const-string v23, "sed -i \'/ro.camcorder.videoModes/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 841
    const-string v23, "sed -i \'/ro.media.enc.hprof.vid.fps/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 843
    const-string v23, "echo \"### Pimp my Rom : Increase photo and video recording quality\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 844
    const-string v23, "echo \"ro.media.dec.jpeg.memcap=8000000\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xb

    .line 845
    const-string v23, "echo \"ro.media.enc.hprof.vid.bps=8000000\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xc

    .line 846
    const-string v23, "echo \"ro.media.capture.maxres=8m\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xd

    .line 847
    const-string v23, "echo \"ro.media.panorama.defres=3264x1840\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xe

    .line 848
    const-string v23, "echo \"ro.media.panorama.frameres=1280x720\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xf

    .line 849
    const-string v23, "echo \"ro.camcorder.videoModes=true\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x10

    .line 850
    const-string v23, "echo \"ro.media.enc.hprof.vid.fps=65\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x11

    .line 852
    const-string v23, "setprop ro.media.dec.jpeg.memcap 8000000"

    aput-object v23, v21, v22

    const/16 v22, 0x12

    .line 853
    const-string v23, "setprop ro.media.enc.hprof.vid.bps 8000000"

    aput-object v23, v21, v22

    const/16 v22, 0x13

    .line 854
    const-string v23, "setprop ro.media.capture.maxres 8m"

    aput-object v23, v21, v22

    const/16 v22, 0x14

    .line 855
    const-string v23, "setprop ro.media.panorama.defres 3264x1840"

    aput-object v23, v21, v22

    const/16 v22, 0x15

    .line 856
    const-string v23, "setprop ro.media.panorama.frameres 1280x720"

    aput-object v23, v21, v22

    const/16 v22, 0x16

    .line 857
    const-string v23, "setprop ro.camcorder.videoModes true"

    aput-object v23, v21, v22

    const/16 v22, 0x17

    .line 858
    const-string v23, "setprop ro.media.enc.hprof.vid.fps 65"

    aput-object v23, v21, v22

    const/16 v22, 0x18

    .line 860
    const-string v23, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x19

    .line 861
    const-string v23, "busybox mount -o ro,remount /system"

    .line 832
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 863
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_7
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_17

    .line 892
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jpg:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 894
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 897
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 900
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 901
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 902
    const-string v23, "sed -i \'/Increase jpg quality to 100/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 903
    const-string v23, "sed -i \'/ro.media.enc.jpeg.quality=100/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 904
    const-string v23, "echo \"### Pimp my Rom :  Increase jpg quality to 100%\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 905
    const-string v23, "echo \"ro.media.enc.jpeg.quality=100\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 906
    const-string v23, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 907
    const-string v23, "busybox mount -o ro,remount /system"

    .line 900
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 909
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_8
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_1a

    .line 937
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->flash:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 939
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 942
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 946
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0xb

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 947
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 948
    const-string v23, "sed -i \'/Better Flashlight intensity/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 949
    const-string v23, "sed -i \'/ro.media.capture.flash/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 950
    const-string v23, "sed -i \'/ro.media.capture.torch/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 951
    const-string v23, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 952
    const-string v23, "echo \"### Pimp my Rom : Better Flashlight intensity & camera-flash quality\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 953
    const-string v23, "echo \"ro.media.capture.flash=led\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x7

    .line 954
    const-string v23, "echo \"ro.media.capture.flashMinV=3300000\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x8

    .line 955
    const-string v23, "echo \"ro.media.capture.torchIntensity=65\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x9

    .line 956
    const-string v23, "echo \"ro.media.capture.flashIntensity=70\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0xa

    .line 957
    const-string v23, "busybox mount -o ro,remount /system"

    .line 946
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 959
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_9
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_1d

    .line 990
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quick:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 992
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 995
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 998
    new-instance v5, Lcom/stericson/RootTools/CommandCapture;

    const/16 v20, 0x0

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 999
    const-string v23, "busybox mount -o rw,remount /system"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    .line 1000
    const-string v23, "sed -i \'/Enable Quick Power-On mode to reduce boot-time/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    .line 1001
    const-string v23, "sed -i \'/ro.config.hw_quickpoweron=true/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x3

    .line 1002
    const-string v23, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x4

    .line 1003
    const-string v23, "echo \"### Pimp my Rom :  Enable Quick Power-On mode to reduce boot-time\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x5

    .line 1004
    const-string v23, "echo \"ro.config.hw_quickpoweron=true\" >> /system/build.prop"

    aput-object v23, v21, v22

    const/16 v22, 0x6

    .line 1005
    const-string v23, "busybox mount -o ro,remount /system"

    .line 998
    aput-object v23, v21, v22

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1007
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    const/16 v20, 0x1

    :try_start_a
    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_20

    .line 1037
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_9
    :goto_a
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1038
    .local v4, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v20, "Reboot Now ?"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1040
    const-string v20, "Reboot needed to apply new changes, do you want to reboot now ?"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 1041
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 1042
    const-string v21, "Yes, Reboot !"

    new-instance v22, Lcom/androguide/pimp/my/rom/TweaksMisc$1$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/TweaksMisc$1$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc$1;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v20

    .line 1051
    const-string v21, "No, keep Pimpin\' !"

    new-instance v22, Lcom/androguide/pimp/my/rom/TweaksMisc$1$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/TweaksMisc$1$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc$1;)V

    invoke-virtual/range {v20 .. v22}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1053
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1054
    .local v3, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1058
    new-instance v8, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1059
    .local v8, dialog:Landroid/app/Dialog;
    const v20, 0x7f030017

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1060
    const-string v20, "Please Wait..."

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1063
    const v20, 0x7f040033

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1064
    .local v14, text:Landroid/widget/TextView;
    const-string v20, "Applying Selected Tweaks..."

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    const v20, 0x7f040034

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ProgressBar;

    .line 1068
    .local v12, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1070
    new-instance v13, Ljava/util/Timer;

    invoke-direct {v13}, Ljava/util/Timer;-><init>()V

    .line 1071
    .local v13, t:Ljava/util/Timer;
    new-instance v20, Lcom/androguide/pimp/my/rom/TweaksMisc$1$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v13}, Lcom/androguide/pimp/my/rom/TweaksMisc$1$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc$1;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1076
    const-wide/16 v21, 0xbb8

    .line 1071
    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1084
    return-void

    .line 461
    .end local v3           #alertDialog:Landroid/app/AlertDialog;
    .end local v4           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v8           #dialog:Landroid/app/Dialog;
    .end local v12           #spin:Landroid/widget/ProgressBar;
    .end local v13           #t:Ljava/util/Timer;
    .end local v14           #text:Landroid/widget/TextView;
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v11

    .line 463
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 464
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v11

    .line 466
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 467
    .end local v11           #e:Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 469
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 476
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 477
    .local v6, contexte:Landroid/content/Context;
    const-string v17, "Do you have root permissions ?"

    .line 478
    .local v17, txte:Ljava/lang/CharSequence;
    const/4 v9, 0x1

    .line 479
    .local v9, duratione:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 480
    .local v15, toaste:Landroid/widget/Toast;
    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 488
    .end local v6           #contexte:Landroid/content/Context;
    .end local v9           #duratione:I
    .end local v15           #toaste:Landroid/widget/Toast;
    .end local v17           #txte:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 489
    .local v7, contextee:Landroid/content/Context;
    const-string v18, "Busybox not found ! Please install it !"

    .line 490
    .local v18, txtee:Ljava/lang/CharSequence;
    const/4 v10, 0x1

    .line 491
    .local v10, durationee:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 492
    .local v16, toastee:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 530
    .end local v7           #contextee:Landroid/content/Context;
    .end local v10           #durationee:I
    .end local v16           #toastee:Landroid/widget/Toast;
    .end local v18           #txtee:Ljava/lang/CharSequence;
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v11

    .line 532
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 533
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v11

    .line 535
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 536
    .end local v11           #e:Ljava/io/IOException;
    :catch_5
    move-exception v11

    .line 538
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 579
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :catch_6
    move-exception v11

    .line 581
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 582
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v11

    .line 584
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 585
    .end local v11           #e:Ljava/io/IOException;
    :catch_8
    move-exception v11

    .line 587
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 638
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :catch_9
    move-exception v11

    .line 640
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 641
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v11

    .line 643
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 644
    .end local v11           #e:Ljava/io/IOException;
    :catch_b
    move-exception v11

    .line 646
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 695
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :catch_c
    move-exception v11

    .line 697
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 698
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v11

    .line 700
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 701
    .end local v11           #e:Ljava/io/IOException;
    :catch_e
    move-exception v11

    .line 703
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 746
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v19       #url:Ljava/lang/String;
    :catch_f
    move-exception v11

    .line 748
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 749
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v11

    .line 751
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 752
    .end local v11           #e:Ljava/io/IOException;
    :catch_11
    move-exception v11

    .line 754
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 796
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    .end local v19           #url:Ljava/lang/String;
    :catch_12
    move-exception v11

    .line 798
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 799
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v11

    .line 801
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 802
    .end local v11           #e:Ljava/io/IOException;
    :catch_14
    move-exception v11

    .line 804
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 864
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :catch_15
    move-exception v11

    .line 866
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 867
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v11

    .line 869
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 870
    .end local v11           #e:Ljava/io/IOException;
    :catch_17
    move-exception v11

    .line 872
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 910
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :catch_18
    move-exception v11

    .line 912
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 913
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v11

    .line 915
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 916
    .end local v11           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v11

    .line 918
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 960
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1b
    move-exception v11

    .line 962
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 963
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v11

    .line 965
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 966
    .end local v11           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v11

    .line 968
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 980
    .end local v5           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v11           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    move-object/from16 v20, v0

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static/range {v20 .. v20}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 1008
    .restart local v5       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v11

    .line 1010
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 1011
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v11

    .line 1013
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 1014
    .end local v11           #e:Ljava/io/IOException;
    :catch_20
    move-exception v11

    .line 1016
    .local v11, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_a
.end method
