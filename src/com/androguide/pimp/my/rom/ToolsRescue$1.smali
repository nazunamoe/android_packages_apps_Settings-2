.class Lcom/androguide/pimp/my/rom/ToolsRescue$1;
.super Ljava/lang/Object;
.source "ToolsRescue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsRescue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsRescue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ToolsRescue;->updateData()V

    .line 160
    return-void
.end method
