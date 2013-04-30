.class Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;
.super Ljava/lang/Object;
.source "TweaksMultitasking.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksMultitasking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;)Lcom/androguide/pimp/my/rom/TweaksMultitasking;
    .locals 1
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 308
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 311
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 314
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xb

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 315
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 316
    const-string v16, "sed -i \'/mount -o/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 317
    const-string v16, "sed -i \'/99Pimp_my_Rom/d\' /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 318
    const-string v16, "echo \"mount -o rw,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 319
    const-string v16, "echo \"sed -i \'1 c\\#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 320
    const-string v16, "echo \"mount -o ro,remount /system\" >> /system/etc/shebang.sh"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 321
    const-string v16, "cd /system/etc"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 322
    const-string v16, "sh shebang.sh"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 323
    const-string v16, "chmod -R 777 /system/etc/sysctl.conf"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 324
    const-string v16, "chmod 777 /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 325
    const-string v16, "busybox mount -o ro,remount /system"

    .line 314
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 330
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

    .line 372
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 374
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 377
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 380
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x69

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 381
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 382
    const-string v16, "sed -i \'/### Pimp my Rom : Mid OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 383
    const-string v16, "sed -i \'/### Pimp my Rom : High OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 384
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 385
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 389
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 390
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 391
    const-string v16, "sed -i \'/ro.VISIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 392
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 393
    const-string v16, "sed -i \'/ro.BACKUP_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 394
    const-string v16, "sed -i \'/ro.HOME_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 395
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 396
    const-string v16, "sed -i \'/ro.EMPTY_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 397
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 398
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 399
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 400
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 401
    const-string v16, "sed -i \'/ro.VISIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 402
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 403
    const-string v16, "sed -i \'/ro.BACKUP_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 404
    const-string v16, "sed -i \'/ro.HOME_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    .line 405
    const-string v16, "sed -i \'/ro.EMPTY_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x16

    .line 406
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MIN_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x17

    .line 407
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x18

    .line 408
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x19

    .line 409
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1a

    .line 410
    const-string v16, "sed -i \'/FAM1=2048/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    .line 411
    const-string v16, "sed -i \'/VAM1=3584/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1c

    .line 412
    const-string v16, "sed -i \'/SAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1d

    .line 413
    const-string v16, "sed -i \'/BAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1e

    .line 414
    const-string v16, "sed -i \'/HAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1f

    .line 415
    const-string v16, "sed -i \'/HIAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x20

    .line 416
    const-string v16, "sed -i \'/EAM1=32000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x21

    .line 417
    const-string v16, "sed -i \'/PAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x22

    .line 418
    const-string v16, "sed -i \'/HWAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x23

    .line 419
    const-string v16, "sed -i \'/CPM1=24320/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x24

    .line 420
    const-string v16, "sed -i \'/FAJ1=8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x25

    .line 421
    const-string v16, "sed -i \'/VAJ1=14/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x26

    .line 422
    const-string v16, "sed -i \'/SAJ1=75/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x27

    .line 423
    const-string v16, "sed -i \'/BAJ1=76/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x28

    .line 424
    const-string v16, "sed -i \'/HAJ1=9/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x29

    .line 425
    const-string v16, "sed -i \'/HAMJ1=89/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2a

    .line 426
    const-string v16, "sed -i \'/EAJ1=125/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2b

    .line 427
    const-string v16, "sed -i \'/PAJ1=10/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2c

    .line 428
    const-string v16, "sed -i \'/HWAJ1=15/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2d

    .line 429
    const-string v16, "sed -i \'/CPJ1=90/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2e

    .line 430
    const-string v16, "sed -i \'/ENFORCE_PROCESS_LIMIT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2f

    .line 431
    const-string v16, "sed -i \'/MAX_SERVICE_INACTIVITY=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x30

    .line 432
    const-string v16, "sed -i \'/MIN_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x31

    .line 433
    const-string v16, "sed -i \'/MAX_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x32

    .line 434
    const-string v16, "sed -i \'/CONTENT_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x33

    .line 435
    const-string v16, "sed -i \'/EMPTY_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x34

    .line 436
    const-string v16, "sed -i \'/MAX_ACTIVITIES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x35

    .line 437
    const-string v16, "sed -i \'/ACTIVITY_INACTIVE_RESET_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x36

    .line 438
    const-string v16, "sed -i \'/MAX_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x37

    .line 439
    const-string v16, "sed -i \'/MIN_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x38

    .line 440
    const-string v16, "sed -i \'/APP_SWITCH_DELAY_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x39

    .line 441
    const-string v16, "sed -i \'/MAX_PROCESSES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3a

    .line 442
    const-string v16, "sed -i \'/PROC_START_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3b

    .line 443
    const-string v16, "sed -i \'/CPU_MIN_CHECK_DURATION=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3c

    .line 444
    const-string v16, "sed -i \'/GC_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3d

    .line 445
    const-string v16, "sed -i \'/SERVICE_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3e

    .line 446
    const-string v16, "sed -i \'/MIN_CRASH_INTERVAL=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3f

    .line 451
    const-string v16, "echo \"### Pimp my Rom : Low OOM Groupings\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x40

    .line 452
    const-string v16, "echo \"ro.FOREGROUND_APP_MEM=6400\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x41

    .line 453
    const-string v16, "echo \"ro.VISIBLE_APP_MEM=8960\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x42

    .line 454
    const-string v16, "echo \"ro.SECONDARY_SERVER_MEM=14080\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x43

    .line 455
    const-string v16, "echo \"ro.BACKUP_APP_MEM=17920\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x44

    .line 456
    const-string v16, "echo \"ro.HOME_APP_MEM=3200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x45

    .line 457
    const-string v16, "echo \"ro.HIDDEN_APP_MEM=17920\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x46

    .line 458
    const-string v16, "echo \"ro.EMPTY_APP_MEM=64000\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x47

    .line 459
    const-string v16, "echo \"ro.PERCEPTIBLE_APP_MEM=3200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x48

    .line 460
    const-string v16, "echo \"ro.HEAVY_WEIGHT_APP_MEM=14080\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x49

    .line 461
    const-string v16, "echo \"ro.CONTENT_PROVIDER_MEM=38400\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4a

    .line 462
    const-string v16, "echo \"ro.FOREGROUND_APP_ADJ=25\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4b

    .line 463
    const-string v16, "echo \"ro.VISIBLE_APP_ADJ=35\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4c

    .line 464
    const-string v16, "echo \"ro.SECONDARY_SERVER_ADJ=55\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4d

    .line 465
    const-string v16, "echo \"ro.BACKUP_APP_ADJ=56\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4e

    .line 466
    const-string v16, "echo \"ro.HOME_APP_ADJ=26\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4f

    .line 467
    const-string v16, "echo \"ro.EMPTY_APP_ADJ=69\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x50

    .line 468
    const-string v16, "echo \"ro.HIDDEN_APP_MIN_ADJ=250\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x51

    .line 469
    const-string v16, "echo \"ro.PERCEPTIBLE_APP_ADJ=27\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x52

    .line 470
    const-string v16, "echo \"ro.HEAVY_WEIGHT_APP_ADJ=36\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x53

    .line 471
    const-string v16, "echo \"ro.CONTENT_PROVIDER_ADJ=70\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x54

    .line 473
    const-string v16, "echo \"FAM1=2048\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x55

    .line 474
    const-string v16, "echo \"VAM1=3584\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x56

    .line 475
    const-string v16, "echo \"SAM1=19200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x57

    .line 476
    const-string v16, "echo \"BAM1=23040\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x58

    .line 477
    const-string v16, "echo \"HAM1=1024\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x59

    .line 478
    const-string v16, "echo \"HIAM1=23040\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5a

    .line 479
    const-string v16, "echo \"EAM1=32000\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5b

    .line 480
    const-string v16, "echo \"PAM1=1024\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5c

    .line 481
    const-string v16, "echo \"HWAM1=19200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5d

    .line 482
    const-string v16, "echo \"CPM1=24320\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5e

    .line 483
    const-string v16, "echo \"FAJ1=8\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5f

    .line 484
    const-string v16, "echo \"VAJ1=14\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x60

    .line 485
    const-string v16, "echo \"SAJ1=75\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x61

    .line 486
    const-string v16, "echo \"BAJ1=76\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x62

    .line 487
    const-string v16, "echo \"HAJ1=9\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x63

    .line 488
    const-string v16, "echo \"HAMJ1=89\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x64

    .line 489
    const-string v16, "echo \"EAJ1=125\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x65

    .line 490
    const-string v16, "echo \"PAJ1=10\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x66

    .line 491
    const-string v16, "echo \"HWAJ1=15\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x67

    .line 492
    const-string v16, "echo \"CPJ1=90\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x68

    .line 494
    const-string v16, "busybox mount -o ro,remount /system"

    .line 380
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 498
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

    .line 528
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOM:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 530
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 533
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 537
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x67

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 539
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 541
    const-string v16, "sed -i \'/### Pimp my Rom : Mid OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 542
    const-string v16, "sed -i \'/### Pimp my Rom : High OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 543
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 544
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 548
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 549
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 550
    const-string v16, "sed -i \'/ro.VISIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 551
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 552
    const-string v16, "sed -i \'/ro.BACKUP_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 553
    const-string v16, "sed -i \'/ro.HOME_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 554
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 555
    const-string v16, "sed -i \'/ro.EMPTY_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 556
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 557
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 558
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 559
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 560
    const-string v16, "sed -i \'/ro.VISIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 561
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 562
    const-string v16, "sed -i \'/ro.BACKUP_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 563
    const-string v16, "sed -i \'/ro.HOME_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    .line 564
    const-string v16, "sed -i \'/ro.EMPTY_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x16

    .line 565
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MIN_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x17

    .line 566
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x18

    .line 567
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x19

    .line 568
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1a

    .line 569
    const-string v16, "sed -i \'/FAM1=2048/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    .line 570
    const-string v16, "sed -i \'/VAM1=3584/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1c

    .line 571
    const-string v16, "sed -i \'/SAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1d

    .line 572
    const-string v16, "sed -i \'/BAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1e

    .line 573
    const-string v16, "sed -i \'/HAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1f

    .line 574
    const-string v16, "sed -i \'/HIAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x20

    .line 575
    const-string v16, "sed -i \'/EAM1=32000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x21

    .line 576
    const-string v16, "sed -i \'/PAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x22

    .line 577
    const-string v16, "sed -i \'/HWAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x23

    .line 578
    const-string v16, "sed -i \'/CPM1=24320/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x24

    .line 579
    const-string v16, "sed -i \'/FAJ1=8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x25

    .line 580
    const-string v16, "sed -i \'/VAJ1=14/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x26

    .line 581
    const-string v16, "sed -i \'/SAJ1=75/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x27

    .line 582
    const-string v16, "sed -i \'/BAJ1=76/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x28

    .line 583
    const-string v16, "sed -i \'/HAJ1=9/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x29

    .line 584
    const-string v16, "sed -i \'/HAMJ1=89/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2a

    .line 585
    const-string v16, "sed -i \'/EAJ1=125/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2b

    .line 586
    const-string v16, "sed -i \'/PAJ1=10/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2c

    .line 587
    const-string v16, "sed -i \'/HWAJ1=15/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2d

    .line 588
    const-string v16, "sed -i \'/CPJ1=90/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2e

    .line 589
    const-string v16, "sed -i \'/ENFORCE_PROCESS_LIMIT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2f

    .line 590
    const-string v16, "sed -i \'/MAX_SERVICE_INACTIVITY=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x30

    .line 591
    const-string v16, "sed -i \'/MIN_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x31

    .line 592
    const-string v16, "sed -i \'/MAX_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x32

    .line 593
    const-string v16, "sed -i \'/CONTENT_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x33

    .line 594
    const-string v16, "sed -i \'/EMPTY_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x34

    .line 595
    const-string v16, "sed -i \'/MAX_ACTIVITIES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x35

    .line 596
    const-string v16, "sed -i \'/ACTIVITY_INACTIVE_RESET_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x36

    .line 597
    const-string v16, "sed -i \'/MAX_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x37

    .line 598
    const-string v16, "sed -i \'/MIN_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x38

    .line 599
    const-string v16, "sed -i \'/APP_SWITCH_DELAY_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x39

    .line 600
    const-string v16, "sed -i \'/MAX_PROCESSES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3a

    .line 601
    const-string v16, "sed -i \'/PROC_START_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3b

    .line 602
    const-string v16, "sed -i \'/CPU_MIN_CHECK_DURATION=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3c

    .line 603
    const-string v16, "sed -i \'/GC_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3d

    .line 604
    const-string v16, "sed -i \'/SERVICE_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3e

    .line 605
    const-string v16, "sed -i \'/MIN_CRASH_INTERVAL=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3f

    .line 608
    const-string v16, "echo \"### Pimp my Rom : Mid OOM Groupings\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x40

    .line 609
    const-string v16, "echo \"ro.FOREGROUND_APP_MEM=6400\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x41

    .line 610
    const-string v16, "echo \"ro.VISIBLE_APP_MEM=8960\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x42

    .line 611
    const-string v16, "echo \"ro.SECONDARY_SERVER_MEM=14080\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x43

    .line 612
    const-string v16, "echo \"ro.BACKUP_APP_MEM=17920\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x44

    .line 613
    const-string v16, "echo \"ro.HOME_APP_MEM=3200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x45

    .line 614
    const-string v16, "echo \"ro.HIDDEN_APP_MEM=17920\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x46

    .line 615
    const-string v16, "echo \"ro.EMPTY_APP_MEM=64000\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x47

    .line 616
    const-string v16, "echo \"ro.PERCEPTIBLE_APP_MEM=3200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x48

    .line 617
    const-string v16, "echo \"ro.HEAVY_WEIGHT_APP_MEM=14080\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x49

    .line 618
    const-string v16, "echo \"ro.CONTENT_PROVIDER_MEM=38400\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4a

    .line 619
    const-string v16, "echo \"ro.FOREGROUND_APP_ADJ=25\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4b

    .line 620
    const-string v16, "echo \"ro.VISIBLE_APP_ADJ=35\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4c

    .line 621
    const-string v16, "echo \"ro.SECONDARY_SERVER_ADJ=55\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4d

    .line 622
    const-string v16, "echo \"ro.BACKUP_APP_ADJ=56\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4e

    .line 623
    const-string v16, "echo \"ro.HOME_APP_ADJ=26\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4f

    .line 624
    const-string v16, "echo \"ro.EMPTY_APP_ADJ=69\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x50

    .line 625
    const-string v16, "echo \"ro.HIDDEN_APP_MIN_ADJ=250\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x51

    .line 626
    const-string v16, "echo \"ro.PERCEPTIBLE_APP_ADJ=27\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x52

    .line 627
    const-string v16, "echo \"ro.HEAVY_WEIGHT_APP_ADJ=36\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x53

    .line 628
    const-string v16, "echo \"ro.CONTENT_PROVIDER_ADJ=70\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x54

    .line 630
    const-string v16, "echo \"ENFORCE_PROCESS_LIMIT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x55

    .line 631
    const-string v16, "echo \"MAX_SERVICE_INACTIVITY=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x56

    .line 632
    const-string v16, "echo \"MIN_HIDDEN_APPS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x57

    .line 633
    const-string v16, "echo \"MAX_HIDDEN_APPS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x58

    .line 634
    const-string v16, "echo \"CONTENT_APP_IDLE_OFFSET=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x59

    .line 635
    const-string v16, "echo \"EMPTY_APP_IDLE_OFFSET=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5a

    .line 636
    const-string v16, "echo \"MAX_ACTIVITIES=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5b

    .line 637
    const-string v16, "echo \"ACTIVITY_INACTIVE_RESET_TIME=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5c

    .line 638
    const-string v16, "echo \"MAX_RECENT_TASKS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5d

    .line 639
    const-string v16, "echo \"MIN_RECENT_TASKS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5e

    .line 640
    const-string v16, "echo \"APP_SWITCH_DELAY_TIME=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5f

    .line 641
    const-string v16, "echo \"MAX_PROCESSES=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x60

    .line 642
    const-string v16, "echo \"PROC_START_TIMEOUT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x61

    .line 643
    const-string v16, "echo \"CPU_MIN_CHECK_DURATION=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x62

    .line 644
    const-string v16, "echo \"GC_TIMEOUT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x63

    .line 645
    const-string v16, "echo \"SERVICE_TIMEOUT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x64

    .line 646
    const-string v16, "echo \"MIN_CRASH_INTERVAL=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x65

    .line 647
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x66

    .line 649
    const-string v16, "busybox mount -o ro,remount /system"

    .line 537
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 651
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

    .line 679
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOM:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    .line 681
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 684
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 687
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x67

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 688
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 690
    const-string v16, "sed -i \'/### Pimp my Rom : Mid OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 691
    const-string v16, "sed -i \'/### Pimp my Rom : High OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 692
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 693
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 698
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 699
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 700
    const-string v16, "sed -i \'/ro.VISIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 701
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 702
    const-string v16, "sed -i \'/ro.BACKUP_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 703
    const-string v16, "sed -i \'/ro.HOME_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 704
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 705
    const-string v16, "sed -i \'/ro.EMPTY_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 706
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 707
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 708
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 709
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 710
    const-string v16, "sed -i \'/ro.VISIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 711
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 712
    const-string v16, "sed -i \'/ro.BACKUP_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 713
    const-string v16, "sed -i \'/ro.HOME_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    .line 714
    const-string v16, "sed -i \'/ro.EMPTY_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x16

    .line 715
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MIN_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x17

    .line 716
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x18

    .line 717
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x19

    .line 718
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1a

    .line 719
    const-string v16, "sed -i \'/FAM1=2048/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    .line 720
    const-string v16, "sed -i \'/VAM1=3584/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1c

    .line 721
    const-string v16, "sed -i \'/SAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1d

    .line 722
    const-string v16, "sed -i \'/BAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1e

    .line 723
    const-string v16, "sed -i \'/HAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1f

    .line 724
    const-string v16, "sed -i \'/HIAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x20

    .line 725
    const-string v16, "sed -i \'/EAM1=32000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x21

    .line 726
    const-string v16, "sed -i \'/PAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x22

    .line 727
    const-string v16, "sed -i \'/HWAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x23

    .line 728
    const-string v16, "sed -i \'/CPM1=24320/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x24

    .line 729
    const-string v16, "sed -i \'/FAJ1=8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x25

    .line 730
    const-string v16, "sed -i \'/VAJ1=14/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x26

    .line 731
    const-string v16, "sed -i \'/SAJ1=75/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x27

    .line 732
    const-string v16, "sed -i \'/BAJ1=76/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x28

    .line 733
    const-string v16, "sed -i \'/HAJ1=9/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x29

    .line 734
    const-string v16, "sed -i \'/HAMJ1=89/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2a

    .line 735
    const-string v16, "sed -i \'/EAJ1=125/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2b

    .line 736
    const-string v16, "sed -i \'/PAJ1=10/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2c

    .line 737
    const-string v16, "sed -i \'/HWAJ1=15/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2d

    .line 738
    const-string v16, "sed -i \'/CPJ1=90/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2e

    .line 739
    const-string v16, "sed -i \'/ENFORCE_PROCESS_LIMIT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2f

    .line 740
    const-string v16, "sed -i \'/MAX_SERVICE_INACTIVITY=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x30

    .line 741
    const-string v16, "sed -i \'/MIN_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x31

    .line 742
    const-string v16, "sed -i \'/MAX_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x32

    .line 743
    const-string v16, "sed -i \'/CONTENT_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x33

    .line 744
    const-string v16, "sed -i \'/EMPTY_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x34

    .line 745
    const-string v16, "sed -i \'/MAX_ACTIVITIES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x35

    .line 746
    const-string v16, "sed -i \'/ACTIVITY_INACTIVE_RESET_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x36

    .line 747
    const-string v16, "sed -i \'/MAX_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x37

    .line 748
    const-string v16, "sed -i \'/MIN_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x38

    .line 749
    const-string v16, "sed -i \'/APP_SWITCH_DELAY_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x39

    .line 750
    const-string v16, "sed -i \'/MAX_PROCESSES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3a

    .line 751
    const-string v16, "sed -i \'/PROC_START_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3b

    .line 752
    const-string v16, "sed -i \'/CPU_MIN_CHECK_DURATION=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3c

    .line 753
    const-string v16, "sed -i \'/GC_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3d

    .line 754
    const-string v16, "sed -i \'/SERVICE_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3e

    .line 755
    const-string v16, "sed -i \'/MIN_CRASH_INTERVAL=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3f

    .line 758
    const-string v16, "echo \"### Pimp my Rom : High OOM Groupings\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x40

    .line 759
    const-string v16, "echo \"ro.FOREGROUND_APP_MEM=6400\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x41

    .line 760
    const-string v16, "echo \"ro.VISIBLE_APP_MEM=8960\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x42

    .line 761
    const-string v16, "echo \"ro.SECONDARY_SERVER_MEM=19200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x43

    .line 762
    const-string v16, "echo \"ro.BACKUP_APP_MEM=23040\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x44

    .line 763
    const-string v16, "echo \"ro.HOME_APP_MEM=3200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x45

    .line 764
    const-string v16, "echo \"ro.HIDDEN_APP_MEM=23040\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x46

    .line 765
    const-string v16, "echo \"ro.EMPTY_APP_MEM=64000\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x47

    .line 766
    const-string v16, "echo \"ro.PERCEPTIBLE_APP_MEM=3200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x48

    .line 767
    const-string v16, "echo \"ro.HEAVY_WEIGHT_APP_MEM=19200\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x49

    .line 768
    const-string v16, "echo \"ro.CONTENT_PROVIDER_MEM=38400\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4a

    .line 769
    const-string v16, "echo \"ro.FOREGROUND_APP_ADJ=25\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4b

    .line 770
    const-string v16, "echo \"ro.VISIBLE_APP_ADJ=35\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4c

    .line 771
    const-string v16, "echo \"ro.SECONDARY_SERVER_ADJ=75\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4d

    .line 772
    const-string v16, "echo \"ro.BACKUP_APP_ADJ=76\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4e

    .line 773
    const-string v16, "echo \"ro.HOME_APP_ADJ=26\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4f

    .line 774
    const-string v16, "echo \"ro.EMPTY_APP_ADJ=89\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x50

    .line 775
    const-string v16, "echo \"ro.HIDDEN_APP_MIN_ADJ=250\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x51

    .line 776
    const-string v16, "echo \"ro.PERCEPTIBLE_APP_ADJ=27\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x52

    .line 777
    const-string v16, "echo \"ro.HEAVY_WEIGHT_APP_ADJ=36\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x53

    .line 778
    const-string v16, "echo \"ro.CONTENT_PROVIDER_ADJ=90\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x54

    .line 780
    const-string v16, "echo \"ENFORCE_PROCESS_LIMIT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x55

    .line 781
    const-string v16, "echo \"MAX_SERVICE_INACTIVITY=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x56

    .line 782
    const-string v16, "echo \"MIN_HIDDEN_APPS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x57

    .line 783
    const-string v16, "echo \"MAX_HIDDEN_APPS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x58

    .line 784
    const-string v16, "echo \"CONTENT_APP_IDLE_OFFSET=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x59

    .line 785
    const-string v16, "echo \"EMPTY_APP_IDLE_OFFSET=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5a

    .line 786
    const-string v16, "echo \"MAX_ACTIVITIES=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5b

    .line 787
    const-string v16, "echo \"ACTIVITY_INACTIVE_RESET_TIME=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5c

    .line 788
    const-string v16, "echo \"MAX_RECENT_TASKS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5d

    .line 789
    const-string v16, "echo \"MIN_RECENT_TASKS=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5e

    .line 790
    const-string v16, "echo \"APP_SWITCH_DELAY_TIME=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5f

    .line 791
    const-string v16, "echo \"MAX_PROCESSES=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x60

    .line 792
    const-string v16, "echo \"PROC_START_TIMEOUT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x61

    .line 793
    const-string v16, "echo \"CPU_MIN_CHECK_DURATION=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x62

    .line 794
    const-string v16, "echo \"GC_TIMEOUT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x63

    .line 795
    const-string v16, "echo \"SERVICE_TIMEOUT=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x64

    .line 796
    const-string v16, "echo \"MIN_CRASH_INTERVAL=false\" >> /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x65

    .line 797
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x66

    .line 800
    const-string v16, "busybox mount -o ro,remount /system"

    .line 687
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 804
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

    .line 834
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MIN:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 836
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 839
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 842
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 844
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 845
    const-string v16, "busybox mount -o rw,remount /sys"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 847
    const-string v16, "sed -i \'/### Pimp my Rom : Low Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 848
    const-string v16, "sed -i \'/### Pimp my Rom : Mid Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 849
    const-string v16, "sed -i \'/### Pimp my Rom : High Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 850
    const-string v16, "sed -i \'/lowmemorykiller/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 852
    const-string v16, "echo \"### Pimp my Rom : Low Minfree Values\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 853
    const-string v16, "echo \"echo \'2048,3584,19200,23040,24320,32000\' > /sys/module/lowmemorykiller/parameters/minfree\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 855
    const-string v16, "busybox mount -o ro,remount /sys"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 856
    const-string v16, "busybox mount -o ro,remount /system"

    .line 842
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 860
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

    .line 887
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MIN:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 889
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_14

    .line 892
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 895
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 897
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 898
    const-string v16, "busybox mount -o rw,remount /sys"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 901
    const-string v16, "sed -i \'/### Pimp my Rom : Low Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 902
    const-string v16, "sed -i \'/### Pimp my Rom : Mid Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 903
    const-string v16, "sed -i \'/### Pimp my Rom : High Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 904
    const-string v16, "sed -i \'/lowmemorykiller/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 906
    const-string v16, "echo \"### Pimp my Rom : Mid Minfree Values\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 907
    const-string v16, "echo \"echo \'6400,8960,14080,17920,38400,64000\' > /sys/module/lowmemorykiller/parameters/minfree\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 909
    const-string v16, "busybox mount -o ro,remount /sys"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 910
    const-string v16, "busybox mount -o ro,remount /system"

    .line 895
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 914
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

    .line 942
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MIN:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    .line 944
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 947
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 950
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xa

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 952
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 953
    const-string v16, "busybox mount -o rw,remount /sys"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 955
    const-string v16, "sed -i \'/### Pimp my Rom : Low Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 956
    const-string v16, "sed -i \'/### Pimp my Rom : Mid Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 957
    const-string v16, "sed -i \'/### Pimp my Rom : High Minfree Values/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 958
    const-string v16, "sed -i \'/lowmemorykiller/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 960
    const-string v16, "echo \"### Pimp my Rom : High Minfree Values\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 961
    const-string v16, "echo \"echo \'6400,8960,19200,23040,38400,64000\' > /sys/module/lowmemorykiller/parameters/minfree\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 963
    const-string v16, "busybox mount -o ro,remount /sys"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 964
    const-string v16, "busybox mount -o ro,remount /system"

    .line 950
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 968
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

    .line 996
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 998
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 1001
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 1004
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1006
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1008
    const-string v16, "sed -i \'/### Pimp my Rom : 64mb zRam Compression/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1009
    const-string v16, "sed -i \'/### Pimp my Rom : 128mb zRam Compression/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1010
    const-string v16, "sed -i \'/zram0/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1012
    const-string v16, "echo \"### Pimp my Rom : 64mb zRam Compression\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1013
    const-string v16, "echo \"/system/xbin/busybox mkswap /dev/block/zram0\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1014
    const-string v16, "echo \"/system/xbin/busybox swapon /dev/block/zram0\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1015
    const-string v16, "echo \"echo $((1024*1024*64)) >  /sys/block/zram0/disksize\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1017
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1004
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1021
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

    .line 1047
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_7

    .line 1049
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1052
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_19

    .line 1055
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1057
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1058
    const-string v16, "sed -i \'/### Pimp my Rom : 64mb zRam Compression/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1059
    const-string v16, "sed -i \'/### Pimp my Rom : 128mb zRam Compression/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1060
    const-string v16, "sed -i \'/zram0/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1061
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1055
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1065
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

    .line 1091
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v13, v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    .line 1093
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 1096
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 1099
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 1101
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 1103
    const-string v16, "sed -i \'/### Pimp my Rom : 64mb zRam Compression/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 1104
    const-string v16, "sed -i \'/### Pimp my Rom : 128mb zRam Compression/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 1105
    const-string v16, "sed -i \'/zram0/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 1107
    const-string v16, "echo \"### Pimp my Rom : 128mb zRam Compression\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 1108
    const-string v16, "echo \"/system/xbin/busybox mkswap /dev/block/zram0\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 1109
    const-string v16, "echo \"/system/xbin/busybox swapon /dev/block/zram0\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 1110
    const-string v16, "echo \"echo $((1024*1024*128)) >  /sys/block/zram0/disksize\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 1112
    const-string v16, "busybox mount -o ro,remount /system"

    .line 1099
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 1116
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

    .line 1142
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :cond_8
    :goto_9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1143
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1145
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1146
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1147
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1156
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1158
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1159
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1162
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1163
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 1164
    const-string v13, "Please Wait..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1167
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1168
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Applying Selected Tweaks..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 1172
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1174
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 1175
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 1180
    const-wide/16 v14, 0x898

    .line 1175
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1187
    return-void

    .line 331
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 333
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 334
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 336
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 339
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 346
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 347
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 348
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 349
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 350
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 358
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 359
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 360
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 361
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 362
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 499
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_3
    move-exception v7

    .line 501
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 502
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v7

    .line 504
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 505
    .end local v7           #e:Ljava/io/IOException;
    :catch_5
    move-exception v7

    .line 507
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 513
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 519
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_6
    move-exception v7

    .line 654
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 655
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v7

    .line 657
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 658
    .end local v7           #e:Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 660
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 666
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 672
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 805
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_9
    move-exception v7

    .line 807
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_3

    .line 808
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_a
    move-exception v7

    .line 810
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 811
    .end local v7           #e:Ljava/io/IOException;
    :catch_b
    move-exception v7

    .line 813
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_3

    .line 819
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 825
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 861
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_c
    move-exception v7

    .line 863
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    .line 864
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_d
    move-exception v7

    .line 866
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 867
    .end local v7           #e:Ljava/io/IOException;
    :catch_e
    move-exception v7

    .line 869
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_4

    .line 875
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 881
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 915
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_f
    move-exception v7

    .line 917
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_5

    .line 918
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_10
    move-exception v7

    .line 920
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 921
    .end local v7           #e:Ljava/io/IOException;
    :catch_11
    move-exception v7

    .line 923
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_5

    .line 929
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 935
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 969
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_12
    move-exception v7

    .line 971
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    .line 972
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_13
    move-exception v7

    .line 974
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 975
    .end local v7           #e:Ljava/io/IOException;
    :catch_14
    move-exception v7

    .line 977
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_6

    .line 983
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 989
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1022
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_15
    move-exception v7

    .line 1024
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 1025
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_16
    move-exception v7

    .line 1027
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 1028
    .end local v7           #e:Ljava/io/IOException;
    :catch_17
    move-exception v7

    .line 1030
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_7

    .line 1036
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1042
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1066
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_18
    move-exception v7

    .line 1068
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_8

    .line 1069
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_19
    move-exception v7

    .line 1071
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 1072
    .end local v7           #e:Ljava/io/IOException;
    :catch_1a
    move-exception v7

    .line 1074
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_8

    .line 1080
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1086
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1117
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_1b
    move-exception v7

    .line 1119
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 1120
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1c
    move-exception v7

    .line 1122
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    .line 1123
    .end local v7           #e:Ljava/io/IOException;
    :catch_1d
    move-exception v7

    .line 1125
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_9

    .line 1131
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Do you have root permissions ?"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1137
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const-string v14, "Busybox not found ! Please install it !"

    invoke-virtual {v13, v14}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->toastMessage(Ljava/lang/String;)V

    goto/16 :goto_9
.end method
