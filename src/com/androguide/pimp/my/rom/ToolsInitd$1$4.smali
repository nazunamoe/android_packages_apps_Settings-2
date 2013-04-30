.class Lcom/androguide/pimp/my/rom/ToolsInitd$1$4;
.super Lcom/stericson/RootTools/Command;
.source "ToolsInitd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsInitd$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsInitd$1;


# direct methods
.method varargs constructor <init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1$4;->this$1:Lcom/androguide/pimp/my/rom/ToolsInitd$1;

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "line"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" >> /sdcard/UNIVERSAL.log.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, log:Ljava/lang/String;
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 275
    const-string v4, "busybox mount -o rw,remount /system"

    aput-object v4, v3, v6

    .line 276
    aput-object v2, v3, v5

    const/4 v4, 0x2

    .line 277
    const-string v5, "busybox mount -o ro,remount /system"

    .line 274
    aput-object v5, v3, v4

    invoke-direct {v0, v6, v3}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 279
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 292
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 288
    .local v1, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0
.end method
