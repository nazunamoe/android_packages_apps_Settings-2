.class Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;
.super Ljava/util/TimerTask;
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

.field private final synthetic val$t:Ljava/util/Timer;

.field private final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;Landroid/widget/Toast;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;->this$1:Lcom/androguide/pimp/my/rom/ToolsInitd$1;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;->val$toast:Landroid/widget/Toast;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;->val$t:Ljava/util/Timer;

    .line 342
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;->val$t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 347
    return-void
.end method
