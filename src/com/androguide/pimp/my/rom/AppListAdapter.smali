.class public Lcom/androguide/pimp/my/rom/AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/App;",
            ">;"
        }
    .end annotation
.end field

.field private mIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mStdImg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mStdImg:Landroid/graphics/drawable/Drawable;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIcons()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mIcons:Ljava/util/Map;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    if-nez p2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 80
    new-instance v1, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;-><init>(Lcom/androguide/pimp/my/rom/AppListAdapter;)V

    .line 81
    .local v1, holder:Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;
    const v2, 0x7f040096

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->mTitle:Landroid/widget/TextView;
    invoke-static {v1, v2}, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->access$0(Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;Landroid/widget/TextView;)V

    .line 82
    const v2, 0x7f040095

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    #setter for: Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->mIcon:Landroid/widget/ImageView;
    invoke-static {v1, v2}, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->access$1(Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;Landroid/widget/ImageView;)V

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androguide/pimp/my/rom/App;

    .line 91
    .local v0, app:Lcom/androguide/pimp/my/rom/App;
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->setTitle(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mIcons:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mIcons:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mStdImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_1
    return-object p2

    .line 86
    .end local v0           #app:Lcom/androguide/pimp/my/rom/App;
    .end local v1           #holder:Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;

    .restart local v1       #holder:Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;
    goto :goto_0

    .line 95
    .restart local v0       #app:Lcom/androguide/pimp/my/rom/App;
    :cond_2
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mIcons:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setIcons(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, icons:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mIcons:Ljava/util/Map;

    .line 117
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/App;>;"
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/AppListAdapter;->mApps:Ljava/util/List;

    .line 108
    return-void
.end method
