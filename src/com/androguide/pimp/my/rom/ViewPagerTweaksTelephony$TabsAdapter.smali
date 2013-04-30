.class public Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ViewPagerTweaksTelephony.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .parameter "activity"
    .parameter "pager"

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 95
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 97
    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 98
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 100
    return-void
.end method


# virtual methods
.method public addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/actionbarsherlock/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 105
    .local v0, info:Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 106
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 107
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 109
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;

    .line 122
    .local v0, info:Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;->access$0(Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 123
    #getter for: Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;->access$1(Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    .line 122
    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 138
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 129
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 134
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 158
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 143
    .local v1, tag:Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 150
    return-void

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 147
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaksTelephony$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 143
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 154
    return-void
.end method
