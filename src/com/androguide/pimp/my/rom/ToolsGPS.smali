.class public Lcom/androguide/pimp/my/rom/ToolsGPS;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsGPS.java"


# instance fields
.field public Country:I

.field Download:Landroid/widget/Button;

.field private DownloadListener:Landroid/view/View$OnClickListener;

.field public Region:I

.field country:Landroid/widget/RadioGroup;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;

.field final radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field final radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field region:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Download:Landroid/widget/Button;

    .line 41
    iput v1, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    .line 42
    iput v1, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Country:I

    .line 71
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsGPS$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 111
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsGPS$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsGPS$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 518
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsGPS$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsGPS$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsGPS;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->DownloadListener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsGPS;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 2402
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 2404
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsGPS;->setHasOptionsMenu(Z)V

    .line 54
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 55
    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->ll:Landroid/widget/ScrollView;

    .line 58
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f04005b

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Download:Landroid/widget/Button;

    .line 59
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Download:Landroid/widget/Button;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->DownloadListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f04005a

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 62
    .local v1, region:Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 64
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400ce

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 65
    .local v0, country:Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 68
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->ll:Landroid/widget/ScrollView;

    return-object v2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 2410
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2442
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 2412
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2413
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsGPS;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2417
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2418
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsGPS;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2422
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2423
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsGPS;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2427
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2428
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsGPS;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2432
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2433
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsGPS;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2437
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsGPS;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2438
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsGPS;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2410
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
