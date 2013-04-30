.class Lcom/androguide/pimp/my/rom/ToolsCPUControl$2;
.super Landroid/os/Handler;
.source "ToolsCPUControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsCPUControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    .line 359
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurFreq:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->access$1(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->access$2(Lcom/androguide/pimp/my/rom/ToolsCPUControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    return-void
.end method
