.class public Lcom/androguide/pimp/my/rom/MainMenu;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "MainMenu.java"


# static fields
.field private static final PRIVATE_PREF:Ljava/lang/String; = "myapp"

.field private static final VERSION_KEY:Ljava/lang/String; = "version_number"


# instance fields
.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v6, "myapp"

    invoke-virtual {v5, v6, v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 78
    .local v4, sharedPref:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 80
    .local v0, currentVersionNumber:I
    const-string v5, "version_number"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 83
    .local v3, savedVersionNumber:I
    :try_start_0
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 84
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    if-le v0, v3, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/androguide/pimp/my/rom/MainMenu;->showWhatsNewDialog()V

    .line 91
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 93
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "version_number"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private showWhatsNewDialog()V
    .locals 6

    .prologue
    .line 99
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 101
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Changelog"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 106
    const-string v4, "OK"

    new-instance v5, Lcom/androguide/pimp/my/rom/MainMenu$1;

    invoke-direct {v5, p0}, Lcom/androguide/pimp/my/rom/MainMenu$1;-><init>(Lcom/androguide/pimp/my/rom/MainMenu;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 124
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 38
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/MainMenu;->setHasOptionsMenu(Z)V

    .line 40
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    iput-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 41
    const v4, 0x7f030022

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->ll:Landroid/widget/RelativeLayout;

    .line 43
    invoke-direct {p0}, Lcom/androguide/pimp/my/rom/MainMenu;->init()V

    .line 46
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, context:Landroid/content/Context;
    const-string v3, "Do you have root permissions ?"

    .line 56
    .local v3, txt:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .line 57
    .local v1, duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 58
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    .line 72
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #duration:I
    .end local v2           #toast:Landroid/widget/Toast;
    .end local v3           #txt:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->ll:Landroid/widget/RelativeLayout;

    return-object v4

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .restart local v0       #context:Landroid/content/Context;
    const-string v3, "Busybox not found ! Please install it !"

    .line 64
    .restart local v3       #txt:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .line 65
    .restart local v1       #duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 66
    .restart local v2       #toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 67
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 132
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 134
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 154
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/MainMenu;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/MainMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
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
