.class public Lcom/androguide/pimp/my/rom/ModsAdblock;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ModsAdblock.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsAd"

.field public static final PREF_AD:Ljava/lang/String; = "hw_acceleration"


# instance fields
.field private AdPrefs:Landroid/content/SharedPreferences;

.field private adblock:Landroid/widget/ToggleButton;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ModsAdblock;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/ModsAdblock;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/ModsAdblock;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 357
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 359
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ModsAdblock;->setHasOptionsMenu(Z)V

    .line 55
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 56
    const v0, 0x7f030026

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->ll:Landroid/widget/ScrollView;

    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040066

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;

    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsAd"

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/ModsAdblock$1;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/ModsAdblock$1;-><init>(Lcom/androguide/pimp/my/rom/ModsAdblock;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 365
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 397
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 367
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsAdblock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ModsAdblock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ModsAdblock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 382
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ModsAdblock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ModsAdblock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 393
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ModsAdblock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 365
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

.method public onPause()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 342
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 344
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->adblock:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->AdPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 349
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 351
    return-void
.end method

.method public updateData()V
    .locals 4

    .prologue
    .line 260
    const v2, 0x7f09018f

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsAdblock;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ModsAdblock;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 263
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 264
    const v2, 0x7f090190

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsAdblock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 265
    const v2, 0x7f090191

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 267
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 273
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ModsAdblock$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ModsAdblock$2;-><init>(Lcom/androguide/pimp/my/rom/ModsAdblock;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 334
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 335
    return-void
.end method
