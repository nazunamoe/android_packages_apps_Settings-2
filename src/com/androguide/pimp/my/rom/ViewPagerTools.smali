.class public Lcom/androguide/pimp/my/rom/ViewPagerTools;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ViewPagerTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;
    }
.end annotation


# instance fields
.field mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field tabCenter:Landroid/widget/TextView;

.field tabText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f04008d

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 34
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ViewPagerTools;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ViewPagerTools;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, bar:Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 38
    new-instance v1, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 41
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 42
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 43
    const-string v3, "Rescue Package"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 44
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsRescue;

    .line 41
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 45
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 46
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 47
    const-string v3, "Init.d Support"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 48
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsInitd;

    .line 45
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 49
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 50
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 51
    const-string v3, "CPU Control"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 52
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsLaunchCPUControl;

    .line 49
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 53
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 54
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 55
    const-string v3, "Density Changer"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 56
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 53
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 57
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 58
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 59
    const-string v3, "Dual Boot-Animation"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 60
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsBootanim;

    .line 57
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 61
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 62
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 63
    const-string v3, "Lock Apps in RAM"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 64
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsLaunchLockApps;

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 65
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 66
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 67
    const-string v3, "GPS Config."

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 68
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsGPS;

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 69
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTools;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;

    .line 70
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 71
    const-string v3, "Device Hidden Menu"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 72
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsHiddenMenu;

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTools$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
