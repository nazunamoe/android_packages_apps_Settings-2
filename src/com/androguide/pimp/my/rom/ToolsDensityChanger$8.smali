.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;)Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
    .locals 1
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 436
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v5, v5, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    const v6, 0x7f040056

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 437
    .local v4, seekDpi:Landroid/widget/SeekBar;
    const/16 v5, 0x168

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 440
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v5, v5, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    const v6, 0x7f040058

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 442
    .local v0, DpiMeter:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v5, v5, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    const v6, 0x7f04005b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 443
    .local v1, apply:Landroid/widget/Button;
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ApplyNewListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$2(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    const-string v5, "ro.sf.lcd_density"

    invoke-static {v5}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, curr_dpi:Ljava/lang/String;
    const-string v5, "disable"

    if-ne v2, v5, :cond_0

    .line 451
    const-string v5, "Current DPI Not Found !"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_0
    new-instance v5, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;

    invoke-direct {v5, p0, v0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 505
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v5, v5, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 508
    return-void

    .line 453
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 455
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 457
    .local v3, interval:I
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dpi : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 460
    .end local v3           #interval:I
    :cond_1
    const-string v5, "Current DPI Not Found !"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
