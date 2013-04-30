.class public Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsLaunchCPUControl.java"


# instance fields
.field CPU:Landroid/widget/TextView;

.field private CPUListener:Landroid/view/View$OnClickListener;

.field CPUSmall:Landroid/widget/TextView;

.field Volt:Landroid/widget/TextView;

.field private VoltListener:Landroid/view/View$OnClickListener;

.field VoltSmall:Landroid/widget/TextView;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPU:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPUSmall:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->Volt:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->VoltSmall:Landroid/widget/TextView;

    .line 57
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPUListener:Landroid/view/View$OnClickListener;

    .line 74
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->VoltListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 91
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 37
    const v0, 0x7f030019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->ll:Landroid/widget/ScrollView;

    .line 39
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04004e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPU:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04004f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPUSmall:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPUListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPUSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->CPUListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040051

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->Volt:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040052

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->VoltSmall:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->Volt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->VoltListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->VoltSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->VoltListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 100
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 132
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 102
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 107
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 117
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 127
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0401f9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
