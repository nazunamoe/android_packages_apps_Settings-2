.class public Lcom/androguide/pimp/my/rom/TweaksEnable;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksEnable.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefs"

.field public static final PREF_16B:Ljava/lang/String; = "Transparency"

.field public static final PREF_DITHER:Ljava/lang/String; = "Dithering"

.field public static final PREF_ERROR:Ljava/lang/String; = "Error_check"

.field public static final PREF_GPU:Ljava/lang/String; = "GPU_Rendering"

.field public static final PREF_HW:Ljava/lang/String; = "hw_acceleration"

.field public static final PREF_LAUNCHER:Ljava/lang/String; = "launcher"

.field public static final PREF_LOG:Ljava/lang/String; = "logger"

.field public static final PREF_PURGE:Ljava/lang/String; = "purgeable_assets"


# instance fields
.field private EPrefs:Landroid/content/SharedPreferences;

.field private check:Landroid/widget/ToggleButton;

.field private dither:Landroid/widget/ToggleButton;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private gpu:Landroid/widget/ToggleButton;

.field private hw:Landroid/widget/ToggleButton;

.field private launcher:Landroid/widget/ToggleButton;

.field private ll:Landroid/widget/ScrollView;

.field private log:Landroid/widget/ToggleButton;

.field private purge:Landroid/widget/ToggleButton;

.field private transp:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->hw:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->gpu:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->dither:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->transp:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->check:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->log:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->launcher:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->purge:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1288
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1290
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksEnable;->setHasOptionsMenu(Z)V

    .line 60
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 61
    const v0, 0x7f03003a

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    .line 65
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040066

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->hw:Landroid/widget/ToggleButton;

    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040151

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->gpu:Landroid/widget/ToggleButton;

    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040152

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->dither:Landroid/widget/ToggleButton;

    .line 68
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040144

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->transp:Landroid/widget/ToggleButton;

    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040153

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->check:Landroid/widget/ToggleButton;

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04016c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->log:Landroid/widget/ToggleButton;

    .line 71
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04016d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->launcher:Landroid/widget/ToggleButton;

    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04016e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->purge:Landroid/widget/ToggleButton;

    .line 74
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefs"

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->hw:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->gpu:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "GPU_Rendering"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->dither:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Dithering"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->transp:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Transparency"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->check:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Error_check"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->log:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "logger"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->launcher:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launcher"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->purge:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;

    const-string v2, "purgeable_assets"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->hw:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$1;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 233
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->gpu:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$2;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 407
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->dither:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$3;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 555
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->transp:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$4;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 703
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->check:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$5;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 854
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->log:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$6;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$6;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 998
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->launcher:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$7;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$7;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1139
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->purge:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksEnable$8;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksEnable$8;-><init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1283
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1296
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1328
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 1298
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1299
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksEnable;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1303
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1304
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksEnable;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1308
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1309
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/TweaksEnable;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1313
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1314
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/TweaksEnable;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1318
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1319
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksEnable;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1323
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1324
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/TweaksEnable;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1296
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
