.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$1;
.super Ljava/lang/Object;
.source "ToolsDensityChanger.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 294
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 296
    return-void
.end method
