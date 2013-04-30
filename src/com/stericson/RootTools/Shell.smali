.class public Lcom/stericson/RootTools/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/Shell$Worker;
    }
.end annotation


# static fields
.field private static customShell:Lcom/stericson/RootTools/Shell; = null

.field private static error:Ljava/lang/String; = null

.field private static rootShell:Lcom/stericson/RootTools/Shell; = null

.field private static shell:Lcom/stericson/RootTools/Shell; = null

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericson/RootTools/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

.field private input:Ljava/lang/Runnable;

.field private final out:Ljava/io/DataOutputStream;

.field private output:Ljava/lang/Runnable;

.field private final proc:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    .line 50
    sput-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    .line 51
    sput-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    .line 45
    iput-boolean v4, p0, Lcom/stericson/RootTools/Shell;->close:Z

    .line 215
    new-instance v2, Lcom/stericson/RootTools/Shell$1;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/Shell$1;-><init>(Lcom/stericson/RootTools/Shell;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->input:Ljava/lang/Runnable;

    .line 256
    new-instance v2, Lcom/stericson/RootTools/Shell$2;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/Shell$2;-><init>(Lcom/stericson/RootTools/Shell;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->output:Ljava/lang/Runnable;

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting shell: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 57
    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    .line 58
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    .line 59
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    .line 61
    new-instance v1, Lcom/stericson/RootTools/Shell$Worker;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/stericson/RootTools/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;Lcom/stericson/RootTools/Shell$Worker;)V

    .line 62
    .local v1, worker:Lcom/stericson/RootTools/Shell$Worker;
    invoke-virtual {v1}, Lcom/stericson/RootTools/Shell$Worker;->start()V

    .line 66
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/stericson/RootTools/Shell$Worker;->join(J)V

    .line 68
    iget v2, v1, Lcom/stericson/RootTools/Shell$Worker;->exit:I

    const/16 v3, -0x38f

    if-ne v2, v3, :cond_0

    .line 69
    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 71
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Lcom/stericson/RootTools/Shell$Worker;->interrupt()V

    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 84
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    .line 76
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->input:Ljava/lang/Runnable;

    const-string v4, "Shell Input"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 77
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->output:Ljava/lang/Runnable;

    const-string v4, "Shell Output"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/stericson/RootTools/Shell;->writeCommands()V

    return-void
.end method

.method static synthetic access$1(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/stericson/RootTools/Shell;->readOutput()V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    sput-object p0, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    return-void
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeShell()V

    .line 175
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeRootShell()V

    .line 176
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeCustomShell()V

    .line 177
    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static closeShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static getOpenShell()Lcom/stericson/RootTools/Shell;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    .line 95
    :goto_0
    return-object v0

    .line 92
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    goto :goto_0

    .line 95
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    goto :goto_0
.end method

.method public static isAnyShellOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 205
    sget-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-eqz v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    sget-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v1, :cond_0

    .line 209
    sget-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v1, :cond_0

    .line 212
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShellOpen()Z
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOutput()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, command:Lcom/stericson/RootTools/Command;
    const/4 v5, 0x0

    .line 272
    .local v5, read:I
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, line:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 308
    :goto_1
    const-string v6, "Read all output"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 309
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 310
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 311
    const-string v6, "Shell destroyed"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 313
    :goto_2
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    .line 320
    return-void

    .line 279
    :cond_1
    if-nez v0, :cond_3

    .line 280
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 282
    iget-boolean v6, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v6, :cond_0

    goto :goto_1

    .line 286
    :cond_2
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lcom/stericson/RootTools/Command;
    check-cast v0, Lcom/stericson/RootTools/Command;

    .line 289
    .restart local v0       #command:Lcom/stericson/RootTools/Command;
    :cond_3
    const-string v6, "F*D^W@#FGF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 290
    .local v4, pos:I
    if-lez v4, :cond_4

    .line 291
    iget v6, v0, Lcom/stericson/RootTools/Command;->id:I

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/stericson/RootTools/Command;->output(ILjava/lang/String;)V

    .line 292
    :cond_4
    if-ltz v4, :cond_5

    .line 293
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, fields:[Ljava/lang/String;
    aget-object v6, v1, v8

    if-eqz v6, :cond_5

    .line 297
    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 298
    .local v2, id:I
    if-ne v2, v5, :cond_5

    .line 299
    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/stericson/RootTools/Command;->setExitCode(I)V

    .line 300
    add-int/lit8 v5, v5, 0x1

    .line 301
    const/4 v0, 0x0

    .line 302
    goto :goto_0

    .line 306
    .end local v1           #fields:[Ljava/lang/String;
    .end local v2           #id:I
    :cond_5
    iget v6, v0, Lcom/stericson/RootTools/Command;->id:I

    invoke-virtual {v0, v6, v3}, Lcom/stericson/RootTools/Command;->output(ILjava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v4           #pos:I
    :cond_6
    if-nez v0, :cond_7

    .line 315
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #command:Lcom/stericson/RootTools/Command;
    check-cast v0, Lcom/stericson/RootTools/Command;

    .line 316
    .restart local v0       #command:Lcom/stericson/RootTools/Command;
    :cond_7
    const-string v6, "Unexpected Termination."

    invoke-virtual {v0, v6}, Lcom/stericson/RootTools/Command;->terminated(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    .line 318
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static runCommand(Lcom/stericson/RootTools/Command;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 152
    return-void
.end method

.method public static runRootCommand(Lcom/stericson/RootTools/Command;)V
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    .line 148
    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/Shell;
    .locals 1
    .parameter "shellPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "Starting Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/stericson/RootTools/Shell;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    .line 133
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    return-object v0

    .line 131
    :cond_0
    const-string v0, "Using Existing Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRootShell()Lcom/stericson/RootTools/Shell;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 99
    sget-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v4, :cond_1

    .line 100
    const-string v4, "Starting Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 101
    const-string v0, "su"

    .line 104
    .local v0, cmd:Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, retries:I
    :goto_0
    sget-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-eqz v4, :cond_0

    .line 122
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #retries:I
    :goto_1
    sget-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    return-object v4

    .line 107
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v2       #retries:I
    :cond_0
    :try_start_0
    new-instance v4, Lcom/stericson/RootTools/Shell;

    invoke-direct {v4, v0}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/io/IOException;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #retries:I
    .local v3, retries:I
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    .line 111
    const-string v4, "IOException, could not start shell"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 112
    throw v1

    .line 119
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #retries:I
    :cond_1
    const-string v4, "Using Existing Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_1

    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v3       #retries:I
    :cond_2
    move v2, v3

    .end local v3           #retries:I
    .restart local v2       #retries:I
    goto :goto_0
.end method

.method public static startShell()Lcom/stericson/RootTools/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "Starting Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/stericson/RootTools/Shell;

    const-string v1, "/system/bin/sh"

    invoke-direct {v0, v1}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    .line 143
    :goto_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    return-object v0

    .line 142
    :cond_0
    const-string v0, "Using Existing Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCommands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v4, 0x0

    .line 230
    .local v4, write:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    .line 230
    .local v3, out:Ljava/io/DataOutputStream;
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 237
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericson/RootTools/Command;

    .line 238
    .local v2, next:Lcom/stericson/RootTools/Command;
    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/Command;->writeCommand(Ljava/io/OutputStream;)V

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\necho F*D^W@#FGF "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, line:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 241
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #next:Lcom/stericson/RootTools/Command;
    .end local v3           #out:Ljava/io/DataOutputStream;
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    .line 254
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_2
    return-void

    .line 243
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :cond_3
    :try_start_5
    iget-boolean v5, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v5, :cond_0

    .line 244
    const-string v5, "\nexit 0\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 245
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 246
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 247
    const-string v5, "Closing shell"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 325
    const-string v1, "Unable to add commands to a closed shell"

    .line 324
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 326
    monitor-exit v1

    .line 331
    return-object p1

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 335
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_0

    .line 336
    sput-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    .line 337
    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_1

    .line 338
    sput-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    .line 339
    :cond_1
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_2

    .line 340
    sput-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    .line 342
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/stericson/RootTools/Shell;->close:Z

    .line 343
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 341
    monitor-exit v1

    .line 345
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countCommands()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public waitFor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/stericson/RootTools/Shell;->close()V

    .line 353
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/Command;

    .line 356
    .local v0, command:Lcom/stericson/RootTools/Command;
    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->exitCode()I

    .line 358
    .end local v0           #command:Lcom/stericson/RootTools/Command;
    :cond_0
    return-void
.end method
