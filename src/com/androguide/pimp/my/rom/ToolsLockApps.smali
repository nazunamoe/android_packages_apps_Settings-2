.class public Lcom/androguide/pimp/my/rom/ToolsLockApps;
.super Landroid/app/Activity;
.source "ToolsLockApps.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final INCLUDE_SYSTEM_APPS:Z


# instance fields
.field Reset:Landroid/widget/Button;

.field private ResetListener:Landroid/view/View$OnClickListener;

.field TabHelp:Landroid/widget/TextView;

.field TabHelpDivider:Landroid/view/View;

.field private TabHelpListener:Landroid/view/View$OnClickListener;

.field TabMenu:Landroid/widget/TextView;

.field TabMenuDivider:Landroid/view/View;

.field private TabMenuListener:Landroid/view/View$OnClickListener;

.field TabTweaks:Landroid/widget/TextView;

.field TabTweaksDivider:Landroid/view/View;

.field private TabTweaksListener:Landroid/view/View$OnClickListener;

.field final context:Landroid/content/Context;

.field inc:I

.field private mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;

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

.field private mAppsList:Landroid/widget/ListView;

.field ppid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabMenu:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabMenuDivider:Landroid/view/View;

    .line 48
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabTweaks:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabTweaksDivider:Landroid/view/View;

    .line 51
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabHelp:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabHelpDivider:Landroid/view/View;

    .line 54
    iput v1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->ppid:I

    .line 55
    iput v1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->inc:I

    .line 57
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->Reset:Landroid/widget/Button;

    .line 59
    iput-object p0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->context:Landroid/content/Context;

    .line 119
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsLockApps$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabMenuListener:Landroid/view/View$OnClickListener;

    .line 134
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsLockApps$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabTweaksListener:Landroid/view/View$OnClickListener;

    .line 149
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsLockApps$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->TabHelpListener:Landroid/view/View$OnClickListener;

    .line 390
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->ResetListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsLockApps;)Lcom/androguide/pimp/my/rom/AppListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;

    return-object v0
.end method

.method private loadInstalledApps(Z)Ljava/util/List;
    .locals 10
    .parameter "includeSysApps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/App;>;"
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 332
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 334
    .local v7, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_0

    .line 350
    return-object v2

    .line 335
    :cond_0
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 336
    .local v5, p:Landroid/content/pm/PackageInfo;
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 338
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    if-nez p1, :cond_1

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 334
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 341
    :cond_1
    new-instance v1, Lcom/androguide/pimp/my/rom/App;

    invoke-direct {v1}, Lcom/androguide/pimp/my/rom/App;-><init>()V

    .line 342
    .local v1, app:Lcom/androguide/pimp/my/rom/App;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/androguide/pimp/my/rom/App;->setTitle(Ljava/lang/String;)V

    .line 343
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/androguide/pimp/my/rom/App;->setPackageName(Ljava/lang/String;)V

    .line 344
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/androguide/pimp/my/rom/App;->setVersionName(Ljava/lang/String;)V

    .line 345
    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v8}, Lcom/androguide/pimp/my/rom/App;->setVersionCode(I)V

    .line 346
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v6}, Landroid/content/pm/ApplicationInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 347
    .local v3, description:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v1, v8}, Lcom/androguide/pimp/my/rom/App;->setDescription(Ljava/lang/String;)V

    .line 348
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_2
    const-string v8, ""

    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v4, 0x7f030036

    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->setContentView(I)V

    .line 78
    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, dialog:Landroid/app/Dialog;
    const v4, 0x7f030017

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 80
    const-string v4, "Loading..."

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    const v4, 0x7f040033

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    .local v3, text:Landroid/widget/TextView;
    const-string v4, "Please Wait..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v4, 0x7f040034

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 88
    .local v1, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 90
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 91
    .local v2, t:Ljava/util/Timer;
    new-instance v4, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;

    invoke-direct {v4, p0, v0, v2}, Lcom/androguide/pimp/my/rom/ToolsLockApps$5;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 96
    const-wide/16 v5, 0x834

    .line 91
    invoke-virtual {v2, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 99
    const v4, 0x7f04005b

    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->Reset:Landroid/widget/Button;

    .line 100
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->Reset:Landroid/widget/Button;

    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->ResetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v4, 0x7f04011f

    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAppsList:Landroid/widget/ListView;

    .line 103
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    invoke-direct {p0, v7}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->loadInstalledApps(Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mApps:Ljava/util/List;

    .line 107
    new-instance v4, Lcom/androguide/pimp/my/rom/AppListAdapter;

    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/androguide/pimp/my/rom/AppListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;

    .line 108
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;

    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mApps:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/androguide/pimp/my/rom/AppListAdapter;->setListItems(Ljava/util/List;)V

    .line 109
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAppsList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    new-instance v5, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v4}, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;)V

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mApps:Ljava/util/List;

    new-array v6, v7, [Lcom/androguide/pimp/my/rom/App;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/androguide/pimp/my/rom/App;

    invoke-virtual {v5, v4}, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androguide/pimp/my/rom/App;

    .line 169
    .local v0, app:Lcom/androguide/pimp/my/rom/App;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getVersionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 174
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, msg:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 177
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 178
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 179
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;

    invoke-virtual {v4}, Lcom/androguide/pimp/my/rom/AppListAdapter;->getIcons()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 180
    const-string v5, "Lock this app in Memory !"

    new-instance v6, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;

    invoke-direct {v6, p0, v0}, Lcom/androguide/pimp/my/rom/ToolsLockApps$6;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;Lcom/androguide/pimp/my/rom/App;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 310
    const-string v5, "Cancel"

    new-instance v6, Lcom/androguide/pimp/my/rom/ToolsLockApps$7;

    invoke-direct {v6, p0}, Lcom/androguide/pimp/my/rom/ToolsLockApps$7;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 316
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 317
    return-void

    .line 174
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method
