.class public Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;
.super Ljava/lang/Object;
.source "CMDProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/util/CMDProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommandResult"
.end annotation


# instance fields
.field public final exit_value:Ljava/lang/Integer;

.field private final resultTag:Ljava/lang/String;

.field public final stderr:Ljava/lang/String;

.field public final stdout:Ljava/lang/String;

.field final synthetic this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/util/CMDProcessor;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter "exit_value_in"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;-><init>(Lcom/androguide/pimp/my/rom/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/androguide/pimp/my/rom/util/CMDProcessor;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "exit_value_in"
    .parameter "stdout_in"
    .parameter "stderr_in"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->this$0:Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    #getter for: Lcom/androguide/pimp/my/rom/util/CMDProcessor;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->access$0(Lcom/androguide/pimp/my/rom/util/CMDProcessor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->resultTag:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    .line 43
    iput-object p3, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stderr:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getOutput()Lcom/androguide/pimp/my/rom/objects/EasyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androguide/pimp/my/rom/objects/EasyPair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/androguide/pimp/my/rom/objects/EasyPair;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stderr:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/androguide/pimp/my/rom/objects/EasyPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->exit_value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
