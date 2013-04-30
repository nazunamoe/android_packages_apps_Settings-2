.class public Lcom/androguide/pimp/my/rom/ToolsInitd;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsInitd.java"


# static fields
.field private static final initd:Ljava/lang/String; = "/system/etc/init.d/00testinitd"


# instance fields
.field Apply:Landroid/widget/Button;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field Verify:Landroid/widget/Button;

.field private VerifyListener:Landroid/view/View$OnClickListener;

.field public bind:I

.field public d2c:I

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field public jit:I

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 37
    iput v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->jit:I

    .line 38
    iput v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->d2c:I

    .line 39
    iput v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->bind:I

    .line 41
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->Apply:Landroid/widget/Button;

    .line 42
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->Verify:Landroid/widget/Button;

    .line 78
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsInitd$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 354
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsInitd$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsInitd$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->VerifyListener:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public fileExistsInSD(Ljava/lang/String;)Z
    .locals 4
    .parameter "sFileName"

    .prologue
    .line 72
    const-string v3, "/system/etc/init.d/00testinitd"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, sFolder:Ljava/lang/String;
    move-object v1, v2

    .line 74
    .local v1, sFile:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

.method protected getContext()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 431
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 433
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsInitd;->setHasOptionsMenu(Z)V

    .line 55
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 56
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->ll:Landroid/widget/ScrollView;

    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->Apply:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->Apply:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040094

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->Verify:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->Verify:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->VerifyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 439
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 471
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 441
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 442
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsInitd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 446
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsInitd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 452
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsInitd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 456
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsInitd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 461
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsInitd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 466
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 467
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsInitd;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 439
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
