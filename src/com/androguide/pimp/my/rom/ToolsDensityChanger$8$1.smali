.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;
.super Ljava/lang/Object;
.source "ToolsDensityChanger.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;

.field private final synthetic val$DpiMeter:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;->val$DpiMeter:Landroid/widget/TextView;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 471
    const/16 v0, 0x78

    if-ge p2, v0, :cond_0

    const/16 p2, 0x78

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;->val$DpiMeter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dpi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;->this$1:Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;)Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    move-result-object v0

    iput p2, v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DPI:I

    .line 481
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 492
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 500
    return-void
.end method
