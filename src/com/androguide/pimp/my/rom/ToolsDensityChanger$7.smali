.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$7;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 410
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    const-string v3, "android.intent.category.APP_MARKET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 412
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 413
    .local v1, openMarket:Landroid/content/Intent;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 416
    .local v0, activityName:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$7;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 418
    return-void
.end method
