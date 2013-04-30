.class public abstract Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;
.super Landroid/os/AsyncTask;
.source "AbstractAsyncSuCMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final FAILURE:Ljava/lang/String;

.field private mMountSystem:Z

.field private mTerm:Lcom/androguide/pimp/my/rom/util/CMDProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const-string v0, "failed_no_command"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->FAILURE:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "mountSystem"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const-string v0, "failed_no_command"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->FAILURE:Ljava/lang/String;

    .line 43
    iput-boolean p1, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    .line 44
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    .line 67
    aget-object v2, p1, v3

    if-eqz v2, :cond_0

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    :cond_0
    const-string v2, "failed_no_command"

    .line 93
    :goto_0
    return-object v2

    .line 70
    :cond_1
    new-instance v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mTerm:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    .line 71
    new-instance v1, Lcom/androguide/pimp/my/rom/objects/EasyPair;

    const-string v2, "failed_no_command"

    const-string v3, "failed_no_command"

    invoke-direct {v1, v2, v3}, Lcom/androguide/pimp/my/rom/objects/EasyPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .local v1, pairedOutput:Lcom/androguide/pimp/my/rom/objects/EasyPair;,"Lcom/androguide/pimp/my/rom/objects/EasyPair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "rw"

    invoke-static {v2}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 79
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v2, v0, :cond_4

    .line 89
    iget-boolean v2, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v2, :cond_3

    .line 90
    const-string v2, "ro"

    invoke-static {v2}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 93
    :cond_3
    invoke-virtual {v1}, Lcom/androguide/pimp/my/rom/objects/EasyPair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 81
    :cond_4
    :try_start_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_5

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 82
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mTerm:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    iget-object v2, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->getOutput()Lcom/androguide/pimp/my/rom/objects/EasyPair;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_5
    iget-boolean v2, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v2, :cond_6

    .line 90
    const-string v2, "ro"

    invoke-static {v2}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 85
    :cond_6
    const-string v2, "failed_no_command"

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v2

    .line 89
    iget-boolean v3, p0, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->mMountSystem:Z

    if-eqz v3, :cond_7

    .line 90
    const-string v3, "ro"

    invoke-static {v3}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 91
    :cond_7
    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/util/AbstractAsyncSuCMDProcessor;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onPostExecute(Ljava/lang/String;)V
.end method
