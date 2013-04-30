.class public Lcom/stericson/RootTools/RootTools;
.super Ljava/lang/Object;
.source "RootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/RootTools$Result;
    }
.end annotation


# static fields
.field public static customShell:Ljava/lang/String;

.field public static debugMode:Z

.field public static lastExitCode:I

.field public static lastFoundBinaryPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static shellDelay:I

.field public static useRoot:Z

.field public static utilPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    sput-boolean v1, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stericson/RootTools/RootTools;->lastFoundBinaryPaths:Ljava/util/List;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    .line 70
    sput v1, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    .line 83
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUtil(Ljava/lang/String;)Z
    .locals 1
    .parameter "util"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->checkUtil(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static closeAllShells()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeAll()V

    .line 117
    return-void
.end method

.method public static closeCustomShell()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeCustomShell()V

    .line 128
    return-void
.end method

.method public static closeShell(Z)V
    .locals 0
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeRootShell()V

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeShell()V

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1
    .parameter "source"
    .parameter "destination"
    .parameter "remountAsRw"
    .parameter "preserveFileAttributes"

    .prologue
    .line 164
    invoke-static {p0, p1, p2, p3}, Lcom/stericson/RootTools/InternalMethods;->copyFile(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 179
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static findBinary(Ljava/lang/String;)Z
    .locals 1
    .parameter "binaryName"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static fixUtil(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "util"
    .parameter "utilPath"

    .prologue
    .line 195
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->fixUtil(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static fixUtils([Ljava/lang/String;)Z
    .locals 1
    .parameter "utils"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->fixUtils([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getBusyBoxApplets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getBusyBoxApplets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, ""

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 238
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getBusyBoxVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/Shell;
    .locals 1
    .parameter "shellPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {p0}, Lcom/stericson/RootTools/Shell;->startCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/Shell;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;
    .locals 1
    .parameter "file"

    .prologue
    .line 306
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getFilePermissionsSymlinks(Ljava/lang/String;)Lcom/stericson/RootTools/Permissions;

    move-result-object v0

    return-object v0
.end method

.method public static getInode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 319
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getInode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMountedAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMounts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Mount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 333
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->getMounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPath()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->getPath()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getShell(Z)Lcom/stericson/RootTools/Shell;
    .locals 1
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 373
    if-eqz p0, :cond_0

    .line 374
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSpace(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 389
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSymlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "file"

    .prologue
    .line 403
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getSymlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/stericson/RootTools/Symlink;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 420
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->getSymlinks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getWorkingToolbox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->getWorkingToolbox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEnoughSpaceOnSdCard(J)Z
    .locals 1
    .parameter "updateSize"

    .prologue
    .line 444
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->hasEnoughSpaceOnSdCard(J)Z

    move-result v0

    return v0
.end method

.method public static hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "util"
    .parameter "box"

    .prologue
    .line 457
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "sourceId"
    .parameter "binaryName"

    .prologue
    .line 495
    const-string v0, "700"

    invoke-static {p0, p1, p2, v0}, Lcom/stericson/RootTools/RootTools;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "sourceId"
    .parameter "destName"
    .parameter "mode"

    .prologue
    .line 477
    invoke-static {p0, p1, p2, p3}, Lcom/stericson/RootTools/InternalMethods;->installBinary(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAccessGiven()Z
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/stericson/RootTools/InternalMethods;->isAccessGiven()Z

    move-result v0

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "Applet"

    .prologue
    .line 521
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/stericson/RootTools/RootTools;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "Applet"
    .parameter "path"

    .prologue
    .line 509
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->isAppletAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBusyboxAvailable()Z
    .locals 1

    .prologue
    .line 537
    const-string v0, "busybox"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNativeToolsReady(ILandroid/content/Context;)Z
    .locals 1
    .parameter "nativeToolsId"
    .parameter "context"

    .prologue
    .line 541
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->isNativeToolsReady(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isProcessRunning(Ljava/lang/String;)Z
    .locals 1
    .parameter "processName"

    .prologue
    .line 555
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->isProcessRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRootAvailable()Z
    .locals 1

    .prologue
    .line 562
    const-string v0, "su"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->findBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static killProcess(Ljava/lang/String;)Z
    .locals 1
    .parameter "processName"

    .prologue
    .line 574
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->killProcess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 906
    const/4 v0, 0x3

    invoke-static {v1, p0, v0, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 907
    return-void
.end method

.method public static log(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1
    .parameter "msg"
    .parameter "type"
    .parameter "e"

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 915
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "msg"

    .prologue
    .line 910
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 911
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1
    .parameter "TAG"
    .parameter "msg"
    .parameter "type"
    .parameter "e"

    .prologue
    .line 918
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v0, :cond_1

    .line 920
    if-nez p0, :cond_0

    .line 921
    sget-object p0, Lcom/stericson/RootTools/InternalVariables;->TAG:Ljava/lang/String;

    .line 924
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 938
    :cond_1
    :goto_0
    return-void

    .line 927
    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :pswitch_1
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 933
    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 598
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->offerBusyBox(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static offerBusyBox(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 584
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->offerBusyBox(Landroid/app/Activity;)V

    .line 585
    return-void
.end method

.method public static offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 1
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 622
    invoke-static {p0, p1}, Lcom/stericson/RootTools/InternalMethods;->offerSuperUser(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static offerSuperUser(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 608
    invoke-static {p0}, Lcom/stericson/RootTools/InternalMethods;->offerSuperUser(Landroid/app/Activity;)V

    .line 609
    return-void
.end method

.method public static remount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "file"
    .parameter "mountType"

    .prologue
    .line 643
    new-instance v0, Lcom/stericson/RootTools/Remounter;

    invoke-direct {v0}, Lcom/stericson/RootTools/Remounter;-><init>()V

    .line 645
    .local v0, remounter:Lcom/stericson/RootTools/Remounter;
    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/Remounter;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static restartAndroid()V
    .locals 1

    .prologue
    .line 656
    const-string v0, "Restart Android"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 657
    const-string v0, "zygote"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->killProcess(Ljava/lang/String;)Z

    .line 658
    return-void
.end method

.method public static runBinary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "binaryName"
    .parameter "parameter"

    .prologue
    .line 672
    new-instance v0, Lcom/stericson/RootTools/Runner;

    invoke-direct {v0, p0, p1, p2}, Lcom/stericson/RootTools/Runner;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .local v0, runner:Lcom/stericson/RootTools/Runner;
    invoke-virtual {v0}, Lcom/stericson/RootTools/Runner;->start()V

    .line 674
    return-void
.end method

.method public static runShellCommand(Lcom/stericson/RootTools/Shell;Lcom/stericson/RootTools/Command;)V
    .locals 0
    .parameter "shell"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 692
    return-void
.end method

.method public static sendShell(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "command"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/stericson/RootTools/RootTools;->sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell(Ljava/lang/String;Lcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;
    .locals 2
    .parameter "command"
    .parameter "result"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 813
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-static {v0, v1, p1, p2}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;I)Ljava/util/List;
    .locals 1
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 721
    sget-boolean v0, Lcom/stericson/RootTools/RootTools;->useRoot:Z

    invoke-static {p0, p1, p2, v0, p3}, Lcom/stericson/RootTools/RootTools;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;
    .locals 6
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "useRoot"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v0, Lcom/stericson/RootTools/Executer;

    invoke-direct {v0}, Lcom/stericson/RootTools/Executer;-><init>()V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stericson/RootTools/Executer;->sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
