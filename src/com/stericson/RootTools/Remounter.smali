.class Lcom/stericson/RootTools/Remounter;
.super Ljava/lang/Object;
.source "Remounter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findMountPointRecursive(Ljava/lang/String;)Lcom/stericson/RootTools/Mount;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getMounts()Ljava/util/ArrayList;

    move-result-object v2

    .line 123
    .local v2, mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, path:Ljava/io/File;
    :cond_0
    if-nez v3, :cond_1

    move-object v1, v4

    .line 138
    .end local v2           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    .end local v3           #path:Ljava/io/File;
    :goto_0
    return-object v1

    .line 124
    .restart local v2       #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    .restart local v3       #path:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericson/RootTools/Mount;

    .line 125
    .local v1, mount:Lcom/stericson/RootTools/Mount;
    invoke-virtual {v1}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 131
    .end local v1           #mount:Lcom/stericson/RootTools/Mount;
    .end local v2           #mounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/stericson/RootTools/Mount;>;"
    .end local v3           #path:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v5, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v5, :cond_3

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v1, v4

    .line 138
    goto :goto_0
.end method


# virtual methods
.method protected remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "file"
    .parameter "mountType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 58
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 62
    .local v2, foundMount:Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 87
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/Remounter;->findMountPointRecursive(Ljava/lang/String;)Lcom/stericson/RootTools/Mount;

    move-result-object v5

    .line 89
    .local v5, mountPoint:Lcom/stericson/RootTools/Mount;
    sget-object v8, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Remounting "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 92
    .local v3, isMountMode:Z
    if-nez v3, :cond_2

    .line 95
    :try_start_0
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v8, 0x0

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 96
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "busybox mount -o remount,"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "toolbox mount -o remount,"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mount -o remount,"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 99
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "/system/bin/toolbox mount -o remount,"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getDevice()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 95
    aput-object v11, v9, v10

    invoke-direct {v0, v8, v9}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 102
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 103
    invoke-virtual {v0}, Lcom/stericson/RootTools/CommandCapture;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 107
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_1
    invoke-direct {p0, p1}, Lcom/stericson/RootTools/Remounter;->findMountPointRecursive(Ljava/lang/String;)Lcom/stericson/RootTools/Mount;

    move-result-object v5

    .line 110
    :cond_2
    sget-object v8, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 112
    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move v6, v7

    .line 116
    .end local v3           #isMountMode:Z
    .end local v5           #mountPoint:Lcom/stericson/RootTools/Mount;
    :cond_3
    :goto_2
    return v6

    .line 64
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->getMounts()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-nez v9, :cond_6

    .line 78
    :goto_3
    if-nez v2, :cond_1

    .line 80
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto/16 :goto_0

    .line 64
    :cond_6
    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stericson/RootTools/Mount;

    .line 65
    .local v4, mount:Lcom/stericson/RootTools/Mount;
    invoke-virtual {v4}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4}, Lcom/stericson/RootTools/Mount;->getMountPoint()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v9

    if-eqz v9, :cond_5

    .line 68
    const/4 v2, 0x1

    .line 69
    goto :goto_3

    .line 72
    .end local v4           #mount:Lcom/stericson/RootTools/Mount;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v7, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v7, :cond_3

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 82
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 115
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #isMountMode:Z
    .restart local v5       #mountPoint:Lcom/stericson/RootTools/Mount;
    :cond_7
    invoke-virtual {v5}, Lcom/stericson/RootTools/Mount;->getFlags()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 105
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method
