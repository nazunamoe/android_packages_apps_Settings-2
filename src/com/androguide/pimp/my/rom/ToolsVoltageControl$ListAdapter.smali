.class public Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToolsVoltageControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/Voltage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;


# direct methods
.method public constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 336
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 337
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->results:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 351
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 360
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;)V

    .line 361
    .local v0, holder:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;
    const v2, 0x7f040088

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mFreq:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 362
    const v2, 0x7f040089

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mCurrentMV:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->access$1(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 363
    const v2, 0x7f04008a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->mSavedMV:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->access$2(Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 364
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 369
    :goto_0
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androguide/pimp/my/rom/Voltage;

    .line 370
    .local v1, voltage:Lcom/androguide/pimp/my/rom/Voltage;
    invoke-virtual {v1}, Lcom/androguide/pimp/my/rom/Voltage;->getFreq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->setFreq(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1}, Lcom/androguide/pimp/my/rom/Voltage;->getCurrentMv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->setCurrentMV(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v1}, Lcom/androguide/pimp/my/rom/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;->setSavedMV(Ljava/lang/String;)V

    .line 373
    return-object p2

    .line 366
    .end local v0           #holder:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;
    .end local v1           #voltage:Lcom/androguide/pimp/my/rom/Voltage;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/Voltage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, mVoltages:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->results:Ljava/util/List;

    .line 378
    return-void
.end method
