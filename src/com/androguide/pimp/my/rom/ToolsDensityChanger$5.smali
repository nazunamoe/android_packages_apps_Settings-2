.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$5;
.super Ljava/lang/Object;
.source "ToolsDensityChanger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 378
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    const-string v1, "reboot"

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;->success()Z

    .line 380
    return-void
.end method
