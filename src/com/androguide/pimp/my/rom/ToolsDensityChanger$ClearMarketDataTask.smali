.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;
.super Landroid/os/AsyncTask;
.source "ToolsDensityChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearMarketDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;


# direct methods
.method private constructor <init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .parameter "stuff"

    .prologue
    const/4 v5, 0x0

    .line 533
    const-string v3, "/data/data/com.android.vending/"

    .line 534
    .local v3, vending:Ljava/lang/String;
    new-instance v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v4, v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ls "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v1

    .line 536
    .local v1, cr:Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;
    iget-object v4, v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 537
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 547
    :goto_0
    return-object v4

    .line 539
    :cond_0
    iget-object v4, v1, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->stdout:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_1
    if-lt v4, v7, :cond_1

    .line 547
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 539
    :cond_1
    aget-object v2, v6, v4

    .line 540
    .local v2, dir:Ljava/lang/String;
    const-string v8, "lib"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rm -r "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, c:Ljava/lang/String;
    new-instance v8, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v8}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v8, v8, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    invoke-virtual {v8, v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    move-result v8

    if-nez v8, :cond_2

    .line 544
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 539
    .end local v0           #c:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
