.class public Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "ViewPagerTweaksDalvik.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;
    }
.end annotation


# instance fields
.field mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field tabCenter:Landroid/widget/TextView;

.field tabText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v1, Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 31
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mViewPager:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f04008e

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 33
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 35
    .local v0, bar:Lcom/actionbarsherlock/app/ActionBar;
    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 37
    new-instance v1, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v2}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 39
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 40
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    const-string v3, "Internet"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 41
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 39
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 42
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 43
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 44
    const-string v3, "Multitasking"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 45
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 46
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 47
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 48
    const-string v3, "Dalvik VM"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 49
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 50
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 51
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 52
    const-string v3, "Kernel"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 53
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksKernel;

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 54
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 55
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 56
    const-string v3, "Android Features"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 57
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksEnable;

    .line 54
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 58
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 59
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 60
    const-string v3, "Telephony"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 61
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 58
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 62
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mTabsAdapter:Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;

    .line 63
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 64
    const-string v3, "Miscellaneous"

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    .line 65
    const-class v3, Lcom/androguide/pimp/my/rom/TweaksMisc;

    .line 62
    invoke-virtual {v1, v2, v3, v4}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik$TabsAdapter;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 67
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksDalvik;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 69
    return-void
.end method
