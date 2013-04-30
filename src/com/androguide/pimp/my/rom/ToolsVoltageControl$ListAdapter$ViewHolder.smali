.class public Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ToolsVoltageControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private mCurrentMV:Landroid/widget/TextView;

.field private mFreq:Landroid/widget/TextView;

.field private mSavedMV:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;


# direct methods
.method public constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->this$1:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mFreq:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mCurrentMV:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mSavedMV:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setCurrentMV(Ljava/lang/String;)V
    .locals 4
    .parameter "currentMv"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mCurrentMV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->this$1:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

.method public setFreq(Ljava/lang/String;)V
    .locals 3
    .parameter "freq"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mFreq:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method public setSavedMV(Ljava/lang/String;)V
    .locals 4
    .parameter "savedMv"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mSavedMV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->this$1:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method
