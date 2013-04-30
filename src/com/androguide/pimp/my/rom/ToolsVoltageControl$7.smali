.class Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;
.super Ljava/lang/Object;
.source "ToolsVoltageControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    iput p2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;->val$id:I

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    iget v1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;->val$id:I

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->removeDialog(I)V

    .line 286
    return-void
.end method
