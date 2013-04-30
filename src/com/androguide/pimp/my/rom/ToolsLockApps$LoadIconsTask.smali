.class Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "ToolsLockApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsLockApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/androguide/pimp/my/rom/App;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;


# direct methods
.method private constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;-><init>(Lcom/androguide/pimp/my/rom/ToolsLockApps;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/androguide/pimp/my/rom/App;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->doInBackground([Lcom/androguide/pimp/my/rom/App;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/androguide/pimp/my/rom/App;)Ljava/lang/Void;
    .locals 12
    .parameter "apps"

    .prologue
    .line 360
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v4, icons:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    invoke-virtual {v7}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 363
    .local v5, manager:Landroid/content/pm/PackageManager;
    array-length v8, p1

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 376
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->access$0(Lcom/androguide/pimp/my/rom/ToolsLockApps;)Lcom/androguide/pimp/my/rom/AppListAdapter;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/androguide/pimp/my/rom/AppListAdapter;->setIcons(Ljava/util/Map;)V

    .line 378
    const/4 v7, 0x0

    return-object v7

    .line 363
    :cond_0
    aget-object v0, p1, v7

    .line 364
    .local v0, app:Lcom/androguide/pimp/my/rom/App;
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, pkgName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 367
    .local v3, ico:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 368
    .local v2, i:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 374
    .end local v2           #i:Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/App;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "ERROR"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to find icon for package \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\': "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsLockApps$LoadIconsTask;->this$0:Lcom/androguide/pimp/my/rom/ToolsLockApps;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsLockApps;->mAdapter:Lcom/androguide/pimp/my/rom/AppListAdapter;
    invoke-static {v0}, Lcom/androguide/pimp/my/rom/ToolsLockApps;->access$0(Lcom/androguide/pimp/my/rom/ToolsLockApps;)Lcom/androguide/pimp/my/rom/AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/AppListAdapter;->notifyDataSetChanged()V

    .line 388
    return-void
.end method
