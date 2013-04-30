.class public Lcom/androguide/pimp/my/rom/Extras;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Extras.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsExtras"

.field public static final PREF_HW:Ljava/lang/String; = "Extras_Build-desc"


# instance fields
.field public BuildDesc:Ljava/lang/String;

.field private ChangeListener:Landroid/view/View$OnClickListener;

.field Changelog:Landroid/widget/TextView;

.field ChangelogSmall:Landroid/widget/TextView;

.field private EPrefs:Landroid/content/SharedPreferences;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private hw:Landroid/widget/ToggleButton;

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->BuildDesc:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/Extras;->Changelog:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/Extras;->ChangelogSmall:Landroid/widget/TextView;

    .line 345
    new-instance v0, Lcom/androguide/pimp/my/rom/Extras$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Extras$1;-><init>(Lcom/androguide/pimp/my/rom/Extras;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ChangeListener:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/Extras;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/androguide/pimp/my/rom/Extras;->showWhatsNewDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/Extras;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->EPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/Extras;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->hw:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/Extras;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method private showWhatsNewDialog()V
    .locals 6

    .prologue
    .line 361
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 363
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Changelog"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 368
    const-string v4, "OK"

    new-instance v5, Lcom/androguide/pimp/my/rom/Extras$3;

    invoke-direct {v5, p0}, Lcom/androguide/pimp/my/rom/Extras$3;-><init>(Lcom/androguide/pimp/my/rom/Extras;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 376
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 380
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 382
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/Extras;->setHasOptionsMenu(Z)V

    .line 56
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 57
    const v0, 0x7f03001d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ll:Landroid/widget/ScrollView;

    .line 59
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040067

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->Changelog:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040068

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ChangelogSmall:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->Changelog:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Extras;->ChangeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ChangelogSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Extras;->ChangeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040066

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->hw:Landroid/widget/ToggleButton;

    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsExtras"

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->EPrefs:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->hw:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Extras;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Extras_Build-desc"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->hw:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/Extras$2;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/Extras$2;-><init>(Lcom/androguide/pimp/my/rom/Extras;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Extras;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 388
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 420
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 390
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/Extras;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/Extras;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 400
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/Extras;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 405
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/Extras;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 410
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/Extras;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 415
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Extras;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/Extras;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
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
