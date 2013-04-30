.class Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;
.super Ljava/util/TimerTask;
.source "ToolsBootanim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsBootanim$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsBootanim$7;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$t:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsBootanim$7;Landroid/app/Dialog;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;->this$1:Lcom/androguide/pimp/my/rom/ToolsBootanim$7;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;->val$t:Ljava/util/Timer;

    .line 755
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 758
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7$3;->val$t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 759
    return-void
.end method
