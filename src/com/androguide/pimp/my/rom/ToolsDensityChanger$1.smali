.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$1;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 146
    return-void
.end method
