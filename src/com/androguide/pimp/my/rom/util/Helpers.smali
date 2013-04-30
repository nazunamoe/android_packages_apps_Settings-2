.class public Lcom/androguide/pimp/my/rom/util/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBusybox()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/busybox"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "Helpers"

    const-string v3, "Busybox not in xbin or bin!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 90
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

    .line 91
    const-string v2, "Helpers"

    const-string v3, " Busybox is there but it is borked! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "Helpers"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkSu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/bin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    const-string v2, "Helpers"

    const-string v3, "su does not exist!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_0
    return v1

    .line 41
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v2, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    .line 42
    const-string v3, "ls /data/app-private"

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    const-string v2, "Helpers"

    const-string v3, " SU exists and we have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const-string v2, "Helpers"

    const-string v3, " SU exists but we dont have permission"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v2, "Helpers"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAvailableIOSchedulers()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, schedulers:[Ljava/lang/String;
    const-string v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v3}, Lcom/androguide/pimp/my/rom/util/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, aux:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    array-length v3, v0

    new-array v2, v3, [Ljava/lang/String;

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 202
    .end local v1           #i:I
    :cond_0
    return-object v2

    .line 195
    .restart local v1       #i:I
    :cond_1
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    .line 196
    aget-object v3, v0, v1

    const/4 v4, 0x1

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    aget-object v3, v0, v1

    aput-object v3, v2, v1

    goto :goto_1
.end method

.method public static getIOScheduler()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, scheduler:Ljava/lang/String;
    const-string v3, "/sys/block/mmcblk0/queue/scheduler"

    invoke-static {v3}, Lcom/androguide/pimp/my/rom/util/Helpers;->readStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, schedulers:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 217
    array-length v5, v2

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_1

    .line 224
    :cond_0
    :goto_1
    return-object v1

    .line 217
    :cond_1
    aget-object v0, v2, v3

    .line 218
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_2

    .line 219
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 220
    goto :goto_1

    .line 217
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getMount(Ljava/lang/String;)Z
    .locals 9
    .parameter "mount"

    .prologue
    const/4 v5, 0x1

    .line 125
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 126
    .local v0, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    const-string v6, "/system"

    invoke-static {v6}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMounts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, mounts:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 128
    array-length v6, v2

    const/4 v7, 0x3

    if-lt v6, v7, :cond_0

    .line 130
    const/4 v6, 0x0

    aget-object v1, v2, v6

    .line 131
    .local v1, device:Ljava/lang/String;
    aget-object v3, v2, v5

    .line 132
    .local v3, path:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v4, v2, v6

    .line 133
    .local v4, point:Ljava/lang/String;
    iget-object v6, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    .line 134
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

    .line 133
    invoke-virtual {v6, v7}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v6

    .line 135
    invoke-virtual {v6}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 140
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
    .line 105
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/mounts"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x100

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 106
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 107
    .local v2, line:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 120
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 109
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 115
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v3, "Helpers"

    const-string v4, "/proc/mounts does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Helpers"

    const-string v4, "Error reading /proc/mounts"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "prop"

    .prologue
    .line 309
    new-instance v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->sh:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v0

    .line 310
    .local v0, cr:Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    .line 313
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "prop"
    .parameter "def"

    .prologue
    .line 304
    invoke-static {p0}, Lcom/androguide/pimp/my/rom/util/Helpers;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static getTimestamp(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 270
    const-string v3, "unknown"

    .line 271
    .local v3, timestamp:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 272
    .local v1, now:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 273
    .local v0, dateFormat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 274
    .local v2, timeFormat:Ljava/text/DateFormat;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 277
    :cond_0
    return-object v3
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, state:Z
    if-eqz p0, :cond_0

    .line 64
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 65
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 66
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const-string v3, "Helpers"

    const-string v4, "The device currently has data connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v2, 0x1

    .line 74
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 70
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    const-string v3, "Helpers"

    const-string v4, "The device does not currently have data connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 4
    .parameter "packageName"
    .parameter "pm"

    .prologue
    const/4 v2, 0x0

    .line 285
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 286
    .local v1, mVersion:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    .end local v1           #mVersion:Ljava/lang/String;
    :goto_0
    return v2

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 292
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #mVersion:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static msgLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "msg"

    .prologue
    .line 234
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    :cond_0
    return-void
.end method

.method public static msgShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "msg"

    .prologue
    .line 246
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 249
    :cond_0
    return-void
.end method

.method public static readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "filePath"
    .parameter "useSu"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, cr:Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;
    if-eqz p1, :cond_0

    .line 164
    new-instance v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v0

    .line 168
    :goto_0
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    .line 170
    :goto_1
    return-object v1

    .line 166
    :cond_0
    new-instance v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->sh:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cat "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fname"

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, line:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x200

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 151
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    move-object v3, v2

    .line 158
    .end local v0           #br:Ljava/io/BufferedReader;
    :goto_0
    return-object v3

    .line 150
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    .line 151
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 152
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v0           #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Helpers"

    const-string v4, "IO Exception when reading sys file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/androguide/pimp/my/rom/util/Helpers;->readFileViaShell(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static readStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "fname"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 208
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restartSystemUI()V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    const-string v1, "pkill -TERM -f com.android.systemui"

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->run(Ljava/lang/String;)Ljava/lang/Process;

    .line 297
    return-void
.end method

.method public static sendMsg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "msg"

    .prologue
    .line 258
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 259
    invoke-static {p0, p1}, Lcom/androguide/pimp/my/rom/util/Helpers;->msgLong(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public static setSystemProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "prop"
    .parameter "val"

    .prologue
    .line 300
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setprop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->run(Ljava/lang/String;)Ljava/lang/Process;

    .line 301
    return-void
.end method

.method public static writeOneLine(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "fname"
    .parameter "value"

    .prologue
    .line 175
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 186
    const/4 v3, 0x1

    .end local v2           #fw:Ljava/io/FileWriter;
    :goto_0
    return v3

    .line 178
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_0
    move-exception v3

    .line 179
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 180
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error writing to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, Error:Ljava/lang/String;
    const-string v3, "Helpers"

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v3, 0x0

    goto :goto_0
.end method
