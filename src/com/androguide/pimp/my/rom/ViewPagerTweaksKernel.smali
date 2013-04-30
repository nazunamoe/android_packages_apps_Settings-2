.class public Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ViewPagerTweaksKernel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;
    }
.end annotation


# instance fields
.field mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

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

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 32
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f04008e

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 34
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, bar:Lcom/actionbarsherlock/app/ActionBar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 38
    new-instance v1, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 40
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 41
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    const-string v3, "Internet"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 42
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 40
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 44
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 45
    const-string v3, "Multitasking"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 46
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 47
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 48
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 49
    const-string v3, "Dalvik VM"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 50
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 51
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 52
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 53
    const-string v3, "Kernel"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 54
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksKernel;

    .line 51
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 56
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 57
    const-string v3, "Android Features"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 58
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksEnable;

    .line 55
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 59
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 60
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 61
    const-string v3, "Telephony"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 62
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 63
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;

    .line 64
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 65
    const-string v3, "Miscellaneous"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 66
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksMisc;

    .line 63
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 68
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksKernel;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 70
    return-void
.end method
