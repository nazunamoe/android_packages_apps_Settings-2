.class Lcom/androguide/pimp/my/rom/ToolsLockApps$3;
.super Ljava/lang/Object;
.source "ToolsLockApps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsLockApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v1}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/androguide/pimp/my/rom/Tools;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, Help:Landroid/content/Intent;
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v1, v0}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
