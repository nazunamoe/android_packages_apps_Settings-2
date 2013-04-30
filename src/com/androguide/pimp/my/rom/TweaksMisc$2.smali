.class Lcom/androguide/pimp/my/rom/TweaksMisc$2;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksMisc$2;)Lcom/androguide/pimp/my/rom/TweaksMisc;
    .locals 1
    .parameter

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "v"

    .prologue
    .line 1104
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1107
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1114
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0xb

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1115
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1116
    const-string v18, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1117
    const-string v18, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1118
    const-string v18, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1119
    const-string v18, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    .line 1120
    const-string v18, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v18, v16, v17

    const/16 v17, 0x6

    .line 1121
    const-string v18, "cd /system/etc"

    aput-object v18, v16, v17

    const/16 v17, 0x7

    .line 1122
    const-string v18, "sh shebang.sh"

    aput-object v18, v16, v17

    const/16 v17, 0x8

    .line 1123
    const-string v18, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v18, v16, v17

    const/16 v17, 0x9

    .line 1124
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0xa

    .line 1125
    const-string v18, "busybox mount -o ro,remount /system"

    .line 1114
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1130
    .local v4, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_0
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1174
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->sqlite3:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1176
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1179
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1182
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0xb

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1183
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1184
    const-string v18, "chmod 777 /system/xbin/sqlite3"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1185
    const-string v18, "sed -i \'/Optimization of all sqlite3 databases each boot/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1186
    const-string v18, "sed -i \'/for sqlite3 in /d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1187
    const-string v18, "sed -i \'/VACUUM;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    .line 1188
    const-string v18, "sed -i \'/.db/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x6

    .line 1189
    const-string v18, "sed -i \'/REINDEX;/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x7

    .line 1190
    const-string v18, "sed -i \'/-iname \"*.db/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x8

    .line 1191
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x9

    .line 1192
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0xa

    const-string v18, "busybox mount -o ro,remount /system"

    .line 1182
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1194
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_1
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1225
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext4:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1227
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1230
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1233
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1234
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1235
    const-string v18, "sed -i \'/Ext4 File-Systems optimization & instant-mount/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1236
    const-string v18, "sed -i \'/nodiratime/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1237
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "busybox mount -o ro,remount /system"

    .line 1233
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1239
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_2
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_8

    .line 1267
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->intsd:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1269
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1272
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1275
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1276
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1277
    const-string v18, "busybox mount -o rw,remount /sys"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1278
    const-string v18, "sed -i \'/External SD/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1279
    const-string v18, "sed -i \'/mtdblock0/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1280
    const-string v18, "sed -i \'/bdi/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    .line 1281
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x6

    const-string v18, "busybox mount -o ro,remount /system"

    .line 1275
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1283
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_3
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_b

    .line 1311
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->extsd:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1313
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1316
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1319
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1320
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1321
    const-string v18, "busybox mount -o rw,remount /sys"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1322
    const-string v18, "sed -i \'/External SD/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1323
    const-string v18, "sed -i \'/bdi/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1324
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const-string v18, "busybox mount -o ro,remount /system"

    .line 1319
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1326
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_4
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_e

    .line 1356
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->zipalign:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1358
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1361
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1364
    const-string v14, "http://gratos-life.fr/pimpmyrom/zipalign/S90zipalign"

    .line 1366
    .local v14, url:Ljava/lang/String;
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1367
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1368
    const-string v18, "rm -f /system/etc/init.d/S90zipalign"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1369
    const-string v18, "chmod 777 /system/etc/init.d/*"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1370
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "busybox mount -o ro,remount /system"

    .line 1366
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1372
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_5
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_11

    .line 1402
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v14           #url:Ljava/lang/String;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->battery:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1404
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1407
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1410
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1411
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1412
    const-string v18, "sed -i \'/Battery Savings/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1413
    const-string v18, "sed -i \'/dirty_expire_centisecs/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1414
    const-string v18, "sed -i \'/dirty_writeback_centisecs/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1415
    const-string v18, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    const-string v18, "busybox mount -o ro,remount /system"

    .line 1410
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1419
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_6
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_14

    .line 1448
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->camera:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1450
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1453
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1456
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1457
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1458
    const-string v18, "sed -i \'/Increase photo and video recording quality/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1459
    const-string v18, "sed -i \'/ro.media.dec.jpeg.memcap=8000000/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1460
    const-string v18, "sed -i \'/ro.media.enc.hprof.vid.bps=8000000/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1461
    const-string v18, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    .line 1462
    const-string v18, "busybox mount -o ro,remount /system"

    .line 1456
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1464
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_7
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_17

    .line 1493
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->jpg:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1495
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1498
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1501
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1502
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1503
    const-string v18, "sed -i \'/Increase jpg quality to 100/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1504
    const-string v18, "sed -i \'/ro.media.enc.jpeg.quality=100/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1505
    const-string v18, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1506
    const-string v18, "busybox mount -o ro,remount /system"

    .line 1501
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1508
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_8
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_1a

    .line 1536
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->flash:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1538
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1541
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1545
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1546
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1547
    const-string v18, "sed -i \'/Better Flashlight intensity/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1548
    const-string v18, "sed -i \'/ro.media.capture.flash/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1549
    const-string v18, "sed -i \'/ro.media.capture.torch/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1550
    const-string v18, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    .line 1551
    const-string v18, "busybox mount -o ro,remount /system"

    .line 1545
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1553
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_9
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_1d

    .line 1584
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iget v15, v15, Lcom/androguide/pimp/my/rom/TweaksMisc;->quick:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1586
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1589
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1592
    new-instance v4, Lcom/stericson/RootTools/CommandCapture;

    const/4 v15, 0x0

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1593
    const-string v18, "busybox mount -o rw,remount /system"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    .line 1594
    const-string v18, "sed -i \'/Enable Quick Power-On mode to reduce boot-time/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    .line 1595
    const-string v18, "sed -i \'/ro.config.hw_quickpoweron=true/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    .line 1596
    const-string v18, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    .line 1597
    const-string v18, "busybox mount -o ro,remount /system"

    .line 1592
    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1599
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v15, 0x1

    :try_start_a
    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v15

    invoke-virtual {v15}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a .. :try_end_a} :catch_20

    .line 1631
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_9
    :goto_a
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1632
    .local v3, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v15, "Reboot Now ?"

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1634
    const-string v15, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 1635
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 1636
    const-string v16, "Yes, Reboot !"

    new-instance v17, Lcom/androguide/pimp/my/rom/TweaksMisc$2$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/TweaksMisc$2$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc$2;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 1645
    const-string v16, "No, keep Pimpin\' !"

    new-instance v17, Lcom/androguide/pimp/my/rom/TweaksMisc$2$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/TweaksMisc$2$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc$2;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1647
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1648
    .local v2, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1653
    new-instance v6, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-direct {v6, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1654
    .local v6, dialoga:Landroid/app/Dialog;
    const v15, 0x7f030017

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->setContentView(I)V

    .line 1655
    const-string v15, "Un-Pimpin\'..."

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1658
    const v15, 0x7f040033

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1659
    .local v11, texta:Landroid/widget/TextView;
    const-string v15, "Removing Selected Tweaks..."

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1660
    const v15, 0x7f040034

    invoke-virtual {v6, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    .line 1663
    .local v9, spina:Landroid/widget/ProgressBar;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1665
    new-instance v10, Ljava/util/Timer;

    invoke-direct {v10}, Ljava/util/Timer;-><init>()V

    .line 1666
    .local v10, ta:Ljava/util/Timer;
    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksMisc$2$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6, v10}, Lcom/androguide/pimp/my/rom/TweaksMisc$2$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc$2;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1671
    const-wide/16 v16, 0xbb8

    .line 1666
    move-wide/from16 v0, v16

    invoke-virtual {v10, v15, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1678
    return-void

    .line 1131
    .end local v2           #alertDialog:Landroid/app/AlertDialog;
    .end local v3           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v6           #dialoga:Landroid/app/Dialog;
    .end local v9           #spina:Landroid/widget/ProgressBar;
    .end local v10           #ta:Ljava/util/Timer;
    .end local v11           #texta:Landroid/widget/TextView;
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v8

    .line 1133
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1134
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 1136
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1137
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 1139
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 1146
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1147
    .local v5, context:Landroid/content/Context;
    const-string v13, "Do you have root permissions ?"

    .line 1148
    .local v13, txt:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .line 1149
    .local v7, duration:I
    invoke-static {v5, v13, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 1150
    .local v12, toast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1158
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #duration:I
    .end local v12           #toast:Landroid/widget/Toast;
    .end local v13           #txt:Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 1159
    .restart local v5       #context:Landroid/content/Context;
    const-string v13, "Busybox not found ! Please install it !"

    .line 1160
    .restart local v13       #txt:Ljava/lang/CharSequence;
    const/4 v7, 0x1

    .line 1161
    .restart local v7       #duration:I
    invoke-static {v5, v13, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    .line 1162
    .restart local v12       #toast:Landroid/widget/Toast;
    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1164
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 1195
    .end local v5           #context:Landroid/content/Context;
    .end local v7           #duration:I
    .end local v12           #toast:Landroid/widget/Toast;
    .end local v13           #txt:Ljava/lang/CharSequence;
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v8

    .line 1197
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1198
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v8

    .line 1200
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1201
    .end local v8           #e:Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 1203
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 1240
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_6
    move-exception v8

    .line 1242
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1243
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v8

    .line 1245
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1246
    .end local v8           #e:Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 1248
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 1284
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_9
    move-exception v8

    .line 1286
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 1287
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v8

    .line 1289
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 1290
    .end local v8           #e:Ljava/io/IOException;
    :catch_b
    move-exception v8

    .line 1292
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 1327
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_c
    move-exception v8

    .line 1329
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 1330
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v8

    .line 1332
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1333
    .end local v8           #e:Ljava/io/IOException;
    :catch_e
    move-exception v8

    .line 1335
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 1373
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    .restart local v14       #url:Ljava/lang/String;
    :catch_f
    move-exception v8

    .line 1375
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 1376
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v8

    .line 1378
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1379
    .end local v8           #e:Ljava/io/IOException;
    :catch_11
    move-exception v8

    .line 1381
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 1420
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    .end local v14           #url:Ljava/lang/String;
    :catch_12
    move-exception v8

    .line 1422
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 1423
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v8

    .line 1425
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1426
    .end local v8           #e:Ljava/io/IOException;
    :catch_14
    move-exception v8

    .line 1428
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 1465
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_15
    move-exception v8

    .line 1467
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 1468
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v8

    .line 1470
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1471
    .end local v8           #e:Ljava/io/IOException;
    :catch_17
    move-exception v8

    .line 1473
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 1509
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_18
    move-exception v8

    .line 1511
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 1512
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v8

    .line 1514
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1515
    .end local v8           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v8

    .line 1517
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 1554
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_1b
    move-exception v8

    .line 1556
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 1557
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v8

    .line 1559
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1560
    .end local v8           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v8

    .line 1562
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 1574
    .end local v4           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v15}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v15

    invoke-static {v15}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_9

    .line 1600
    .restart local v4       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1e
    move-exception v8

    .line 1602
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_a

    .line 1603
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1f
    move-exception v8

    .line 1605
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 1606
    .end local v8           #e:Ljava/io/IOException;
    :catch_20
    move-exception v8

    .line 1608
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v8}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_a
.end method
