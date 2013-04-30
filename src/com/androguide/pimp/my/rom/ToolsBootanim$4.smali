.class Lcom/androguide/pimp/my/rom/ToolsBootanim$4;
.super Ljava/lang/Object;
.source "ToolsBootanim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsBootanim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsBootanim;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->updateCount()V

    .line 344
    return-void
.end method
