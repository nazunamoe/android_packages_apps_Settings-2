.class public Lcom/androguide/pimp/my/rom/helper/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBusybox()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    const-string v2, "Helpers"

    const-string v3, "Busybox not in xbin or bin!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 65
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v2, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    const-string v3, "busybox mount"

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    const-string v2, "Helpers"

    const-string v3, " Busybox is there but it is borked! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "Helpers"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkSu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    const-string v2, "Helpers"

    const-string v3, "su does not exist!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 38
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v2, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    .line 39
    const-string v3, "ls /data/app-private"

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const-string v2, "Helpers"

    const-string v3, " SU exists and we have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    const-string v2, "Helpers"

    const-string v3, " SU exists but we dont have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "Helpers"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "prop"

    .prologue
    .line 230
    const-string v2, "/system/build.prop"

    .line 231
    .local v2, mBuildPath:Ljava/lang/String;
    const-string v0, "disable"

    .line 232
    .local v0, DISABLE:Ljava/lang/String;
    const/4 v4, 0x0

    .line 235
    .local v4, value:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 236
    .local v3, mProps:Ljava/util/Properties;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 238
    invoke-virtual {v3, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    const-string v5, "Helpers"

    const-string v6, "Helpers:findBuildPropValueOf found {%s} with the value (%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    .end local v3           #mProps:Ljava/util/Properties;
    :goto_0
    if-eqz v4, :cond_0

    .line 249
    .end local v4           #value:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 240
    .restart local v4       #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 241
    .local v1, ioe:Ljava/io/IOException;
    const-string v5, "Helpers"

    const-string v6, "failed to load input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ioe:Ljava/io/IOException;
    :cond_0
    move-object v4, v0

    .line 249
    goto :goto_1

    .line 242
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static getFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"

    .prologue
    .line 119
    const-string v4, ""

    .line 120
    .local v4, s:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 125
    const/16 v6, 0x100

    .line 124
    invoke-direct {v0, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 126
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 127
    .local v1, buffer:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 131
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 137
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v4

    .line 128
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 132
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Helpers"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error reading file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getMount(Ljava/lang/String;)Z
    .locals 9
    .parameter "mount"

    .prologue
    const/4 v5, 0x1

    .line 102
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 103
    .local v0, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    const-string v6, "/system"

    invoke-static {v6}, Lcom/androguide/pimp/my/rom/helper/Helper;->getMounts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, mounts:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 105
    array-length v6, v2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 107
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 108
    .local v1, device:Ljava/lang/String;
    aget-object v3, v2, v5

    .line 109
    .local v3, path:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v4, v2, v6

    .line 110
    .local v4, point:Ljava/lang/String;
    iget-object v6, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mount -o "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",remount -t "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #point:Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    iget-object v5, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "busybox mount -o remount,"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " /system"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v5

    goto :goto_0
.end method

.method public static getMounts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "path"

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/mounts"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 81
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 82
    .local v2, line:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 97
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 84
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 91
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "Helpers"

    const-string v4, "/proc/mounts does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 95
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Helpers"

    const-string v4, "Error reading /proc/mounts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isESoundControl()I
    .locals 10

    .prologue
    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, esoundonOff:I
    const-string v6, ""

    .line 311
    .local v6, line:Ljava/lang/String;
    const-string v5, "/sys/class/misc/soundcontrol/highperf_enabled"

    .line 312
    .local v5, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/sys/class/misc/soundcontrol/highperf_enabled"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 316
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x100

    invoke-direct {v0, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 317
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 318
    .local v1, buffer:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 326
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 332
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 319
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 321
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 322
    :catch_0
    move-exception v7

    .line 323
    .local v7, nfe:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0

    .line 327
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    .end local v7           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 328
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Helpers"

    const-string v9, "Error reading file: /sys/class/misc/soundcontrol/highperf_enabled"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isETouchWake()I
    .locals 10

    .prologue
    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, etouchonOff:I
    const-string v6, ""

    .line 284
    .local v6, line:Ljava/lang/String;
    const-string v5, "/sys/class/misc/touchwake/enabled"

    .line 285
    .local v5, filename:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v8, "/sys/class/misc/touchwake/enabled"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 289
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x100

    invoke-direct {v0, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 290
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 291
    .local v1, buffer:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 299
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 305
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 292
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 294
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    .line 295
    :catch_0
    move-exception v7

    .line 296
    .local v7, nfe:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0

    .line 300
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    .end local v7           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 301
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Helpers"

    const-string v9, "Error reading file: /sys/class/misc/touchwake/enabled"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isFastCharge()I
    .locals 10

    .prologue
    .line 255
    const/4 v7, 0x0

    .line 256
    .local v7, onOff:I
    const-string v5, ""

    .line 257
    .local v5, line:Ljava/lang/String;
    const-string v4, "/sys/kernel/fast_charge/force_fast_charge"

    .line 258
    .local v4, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v8, "/sys/kernel/fast_charge/force_fast_charge"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 262
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x100

    invoke-direct {v0, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 263
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 264
    .local v1, buffer:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 278
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 265
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #buffer:Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 267
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_0

    .line 268
    :catch_0
    move-exception v6

    .line 269
    .local v6, nfe:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    goto :goto_0

    .line 273
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #buffer:Ljava/lang/String;
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 274
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Helpers"

    const-string v9, "Error reading file: /sys/kernel/fast_charge/force_fast_charge"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "packageName"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 200
    .local v1, mVersion:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    .end local v1           #mVersion:Ljava/lang/String;
    :goto_0
    return v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 206
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #mVersion:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static mountSystem(Ljava/lang/String;)Z
    .locals 5
    .parameter "read_value"

    .prologue
    .line 216
    const-string v0, "busybox mount -o %s,remount -t yaffs2 /dev/block/mtdblock1 /system"

    .line 217
    .local v0, REMOUNT_CMD:Ljava/lang/String;
    new-instance v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 218
    .local v1, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    const-string v2, "Helpers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remounting /system "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v2

    return v2
.end method

.method public static msgLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "msg"

    .prologue
    .line 165
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_0
    return-void
.end method

.method public static msgShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "msg"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    :cond_0
    return-void
.end method

.method public static sendMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "msg"

    .prologue
    .line 189
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 190
    invoke-static {p0, p1}, Lcom/androguide/pimp/my/rom/helper/Helper;->msgLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public static writeNewFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"
    .parameter "fileContents"

    .prologue
    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 148
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 149
    .local v2, fstream:Ljava/io/FileWriter;
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 150
    .local v3, out:Ljava/io/BufferedWriter;
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2           #fstream:Ljava/io/FileWriter;
    .end local v3           #out:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Helpers"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to create "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " File contents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
