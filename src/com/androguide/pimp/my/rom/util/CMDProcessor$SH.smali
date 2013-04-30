.class public Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/util/CMDProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SH"
.end annotation


# instance fields
.field private SHELL:Ljava/lang/String;

.field final synthetic this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;


# direct methods
.method public constructor <init>(Lcom/androguide/pimp/my/rom/util/CMDProcessor;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "SHELL_in"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "sh"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "is"

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, out:Ljava/lang/String;
    const/4 v0, 0x0

    .line 70
    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v2, dis:Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .local v1, buffer:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-gtz v5, :cond_2

    move-object v0, v1

    .line 78
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    :goto_1
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    :cond_1
    return-object v4

    .line 75
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_3
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 80
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .local v3, ex:Ljava/lang/Exception;
    :goto_2
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    #getter for: Lcom/androguide/pimp/my/rom/util/CMDProcessor;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->access$0(Lcom/androguide/pimp/my/rom/util/CMDProcessor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method public run(Ljava/lang/String;)Ljava/lang/Process;
    .locals 6
    .parameter "s"

    .prologue
    .line 89
    const/4 v1, 0x0

    .line 91
    .local v1, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->SHELL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/io/DataOutputStream;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 92
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    .local v2, toProcess:Ljava/io/DataOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exec "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2           #toProcess:Ljava/io/DataOutputStream;
    :goto_0
    return-object v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    #getter for: Lcom/androguide/pimp/my/rom/util/CMDProcessor;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->access$0(Lcom/androguide/pimp/my/rom/util/CMDProcessor;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while trying to run: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;
    .locals 8
    .parameter "s"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->run(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 107
    .local v2, process:Ljava/lang/Process;
    const/4 v1, 0x0

    .line 108
    .local v1, exit_value:Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 109
    .local v4, stdout:Ljava/lang/String;
    const/4 v3, 0x0

    .line 110
    .local v3, stderr:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 113
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 121
    :cond_0
    :goto_0
    new-instance v5, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    iget-object v6, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v5, v6, v1, v4, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;-><init>(Lcom/androguide/pimp/my/rom/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    #getter for: Lcom/androguide/pimp/my/rom/util/CMDProcessor;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->access$0(Lcom/androguide/pimp/my/rom/util/CMDProcessor;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runWaitFor "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    #getter for: Lcom/androguide/pimp/my/rom/util/CMDProcessor;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->access$0(Lcom/androguide/pimp/my/rom/util/CMDProcessor;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "runWaitFor "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
