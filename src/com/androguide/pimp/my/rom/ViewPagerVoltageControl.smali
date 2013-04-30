.class public Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ViewPagerVoltageControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;
    }
.end annotation


# instance fields
.field mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;

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

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f04008b

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 34
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, bar:Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 38
    new-instance v1, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;

    .line 40
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;

    .line 41
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    const-string v3, "CPU Control"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 42
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsCPUControl;

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;

    .line 44
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 45
    const-string v3, "Voltage Control"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 46
    const-class v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 48
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerVoltageControl;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 50
    return-void
.end method
