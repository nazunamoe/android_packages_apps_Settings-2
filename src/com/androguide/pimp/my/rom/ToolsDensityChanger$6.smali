.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$6;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 393
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$6;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketDataValue:Landroid/widget/TextView;

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 396
    return-void
.end method
