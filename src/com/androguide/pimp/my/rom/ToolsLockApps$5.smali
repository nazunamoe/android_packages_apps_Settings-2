.class Lcom/androguide/pimp/my/rom/ToolsLockApps$5;
.super Ljava/util/TimerTask;
.source "ToolsLockApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsLockApps;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$t:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;Landroid/app/Dialog;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;->val$t:Ljava/util/Timer;

    .line 91
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 94
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;->val$t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 95
    return-void
.end method
