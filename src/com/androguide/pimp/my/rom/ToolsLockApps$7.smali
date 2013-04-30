.class Lcom/androguide/pimp/my/rom/ToolsLockApps$7;
.super Ljava/lang/Object;
.source "ToolsLockApps.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsLockApps;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 313
    return-void
.end method
