.class public Lcom/androguide/pimp/my/rom/TweaksMultitasking;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksMultitasking.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsMultitasking"

.field public static final PREF_DALVIK:Ljava/lang/String; = "adjust_multi_to_dalvik"

.field public static final PREF_KERNEL:Ljava/lang/String; = "adjust_multi_to_kernel"

.field public static final PREF_MINFREE:Ljava/lang/String; = "minfree"

.field public static final PREF_OOM:Ljava/lang/String; = "oom"

.field public static final PREF_RENICE:Ljava/lang/String; = "Renice"

.field public static final PREF_ZRAM:Ljava/lang/String; = "zram"


# instance fields
.field Apply:Landroid/widget/Button;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field public MIN:I

.field public MINP:I

.field private MuPrefs:Landroid/content/SharedPreferences;

.field public OOM:I

.field public OOMP:I

.field private ReniceListener:Landroid/view/View$OnClickListener;

.field public ZRAM:I

.field public ZRAMP:I

.field private dalvik:Landroid/widget/CheckBox;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private free:Landroid/widget/RadioGroup;

.field private kernel:Landroid/widget/CheckBox;

.field private ll:Landroid/widget/ScrollView;

.field private oom:Landroid/widget/RadioGroup;

.field final radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field final radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field final radiochecker3:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private renice:Landroid/widget/Button;

.field private zram:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->Apply:Landroid/widget/Button;

    .line 65
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOM:I

    .line 66
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MIN:I

    .line 67
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    .line 69
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    .line 70
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    .line 71
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    .line 131
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ReniceListener:Landroid/view/View$OnClickListener;

    .line 200
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 235
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 269
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker3:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 302
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1233
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1235
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 80
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->setHasOptionsMenu(Z)V

    .line 82
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 83
    const v0, 0x7f03003e

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    .line 86
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsMultitasking"

    invoke-virtual {v0, v1, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    .line 89
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->Apply:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->Apply:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005a

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    .line 93
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "oom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    .line 94
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 97
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0400ce

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    .line 98
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "minfree"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    .line 99
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 102
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401c9

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    .line 103
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "zram"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    .line 104
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker3:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 109
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    const v1, 0x7f0401c6

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 110
    :cond_0
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    const v1, 0x7f0401c7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 111
    :cond_1
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    const v1, 0x7f0401c8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 113
    :cond_2
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    const v1, 0x7f0401cd

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 114
    :cond_3
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    const v1, 0x7f0401ce

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 115
    :cond_4
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    const v1, 0x7f0401cf

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 117
    :cond_5
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    const v1, 0x7f04005d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 118
    :cond_6
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    const v1, 0x7f04005f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 119
    :cond_7
    iget v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    const v1, 0x7f0401ca

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    :cond_8
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040171

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->dalvik:Landroid/widget/CheckBox;

    .line 123
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040172

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->kernel:Landroid/widget/CheckBox;

    .line 125
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401d4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->renice:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->renice:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ReniceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1241
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1273
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 1243
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1244
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1248
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1253
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1254
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1258
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1259
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1263
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1264
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1268
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1269
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1241
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
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1195
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "oom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    .line 1196
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1198
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "minfree"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    .line 1199
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1201
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "zram"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    .line 1202
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker3:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1204
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 1206
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1211
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "oom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->OOMP:I

    .line 1212
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->oom:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1214
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "minfree"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MINP:I

    .line 1215
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->free:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1217
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;

    const-string v1, "zram"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAMP:I

    .line 1218
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->zram:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->radiochecker3:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1220
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 1222
    return-void
.end method

.method protected toastMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1229
    return-void
.end method
