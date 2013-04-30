.class public Lcom/androguide/pimp/my/rom/TweaksKernel;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksKernel.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsKernel"

.field public static final PREF_brazilianwax:Ljava/lang/String; = "brazilianwax"

.field public static final PREF_conservative:Ljava/lang/String; = "conservative"

.field public static final PREF_gentsleep:Ljava/lang/String; = "gentsleep"

.field public static final PREF_interactive:Ljava/lang/String; = "interactive"

.field public static final PREF_interactivex:Ljava/lang/String; = "interactivex"

.field public static final PREF_iostats:Ljava/lang/String; = "iostats"

.field public static final PREF_lulzactive:Ljava/lang/String; = "lulzactive"

.field public static final PREF_newsleep:Ljava/lang/String; = "newsleep"

.field public static final PREF_normsleep:Ljava/lang/String; = "normsleep"

.field public static final PREF_novsync:Ljava/lang/String; = "novsync"

.field public static final PREF_ondemand:Ljava/lang/String; = "ondemand"

.field public static final PREF_ondemandx:Ljava/lang/String; = "ondemandx"

.field public static final PREF_smartassv2:Ljava/lang/String; = "smartassv2"

.field public static final PREF_sysctlio:Ljava/lang/String; = "sysctlio"

.field public static final PREF_yesvsync:Ljava/lang/String; = "yesvsync"


# instance fields
.field Apply:Landroid/widget/Button;

.field Remove:Landroid/widget/Button;

.field private brazil:Landroid/widget/CheckBox;

.field public brazilianwax:I

.field private buttonListener:Landroid/view/View$OnClickListener;

.field private cons:Landroid/widget/CheckBox;

.field public conservative:I

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private gentle:Landroid/widget/CheckBox;

.field public gentsleep:I

.field private inter:Landroid/widget/CheckBox;

.field public interactive:I

.field public interactivex:I

.field private intx:Landroid/widget/CheckBox;

.field public iostats:I

.field private kPrefs:Landroid/content/SharedPreferences;

.field private ll:Landroid/widget/ScrollView;

.field private lulz:Landroid/widget/CheckBox;

.field public lulzactive:I

.field private newfair:Landroid/widget/CheckBox;

.field public newsleep:I

.field private norm:Landroid/widget/CheckBox;

.field public normsleep:I

.field private nov:Landroid/widget/CheckBox;

.field public novsync:I

.field private ond:Landroid/widget/CheckBox;

.field public ondemand:I

.field public ondemandx:I

.field private ondx:Landroid/widget/CheckBox;

.field private removeListener:Landroid/view/View$OnClickListener;

.field private sched:Landroid/widget/CheckBox;

.field private smart:Landroid/widget/CheckBox;

.field public smartassv2:I

.field private stats:Landroid/widget/CheckBox;

.field public sysctlio:I

.field private yesv:Landroid/widget/CheckBox;

.field public yesvsync:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 62
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondemand:I

    .line 63
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondemandx:I

    .line 64
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->smartassv2:I

    .line 65
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->brazilianwax:I

    .line 66
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->interactive:I

    .line 67
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->interactivex:I

    .line 68
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->lulzactive:I

    .line 69
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->conservative:I

    .line 70
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->iostats:I

    .line 71
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->sysctlio:I

    .line 72
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->novsync:I

    .line 73
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesvsync:I

    .line 74
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->normsleep:I

    .line 75
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentsleep:I

    .line 76
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->newsleep:I

    .line 94
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->Apply:Landroid/widget/Button;

    .line 95
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->Remove:Landroid/widget/Button;

    .line 592
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksKernel$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->buttonListener:Landroid/view/View$OnClickListener;

    .line 1444
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksKernel$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->removeListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksKernel;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->stats:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->sched:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$12(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->nov:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$13(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesv:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$14(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->norm:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$15(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentle:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$16(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->newfair:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ond:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondx:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->smart:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->lulz:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->intx:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->inter:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->brazil:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$9(Lcom/androguide/pimp/my/rom/TweaksKernel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->cons:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 2289
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 2291
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksKernel;->setHasOptionsMenu(Z)V

    .line 105
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 106
    const v0, 0x7f03003b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    .line 108
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsKernel"

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    .line 110
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->Apply:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->Apply:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040094

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->Remove:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->Remove:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->removeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040171

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ond:Landroid/widget/CheckBox;

    .line 120
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ond:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$3;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040172

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondx:Landroid/widget/CheckBox;

    .line 151
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondx:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$4;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040173

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->smart:Landroid/widget/CheckBox;

    .line 183
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->smart:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$5;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040195

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->lulz:Landroid/widget/CheckBox;

    .line 216
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->lulz:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$6;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$6;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040179

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->intx:Landroid/widget/CheckBox;

    .line 247
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->intx:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$7;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$7;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 278
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040174

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->inter:Landroid/widget/CheckBox;

    .line 279
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->inter:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$8;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$8;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040175

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->brazil:Landroid/widget/CheckBox;

    .line 310
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->brazil:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$9;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$9;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 340
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040194

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->cons:Landroid/widget/CheckBox;

    .line 341
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->cons:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$10;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$10;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 372
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040181

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->stats:Landroid/widget/CheckBox;

    .line 373
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->stats:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$11;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$11;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 401
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040182

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->sched:Landroid/widget/CheckBox;

    .line 402
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->sched:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$12;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$12;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 431
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04018a

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->nov:Landroid/widget/CheckBox;

    .line 432
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->nov:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$13;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$13;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 462
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040190

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesv:Landroid/widget/CheckBox;

    .line 463
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesv:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$14;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$14;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 492
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04017d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->norm:Landroid/widget/CheckBox;

    .line 493
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->norm:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$15;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$15;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 523
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040192

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentle:Landroid/widget/CheckBox;

    .line 524
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentle:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$16;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$16;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 553
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040193

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->newfair:Landroid/widget/CheckBox;

    .line 554
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->newfair:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksKernel$17;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksKernel$17;-><init>(Lcom/androguide/pimp/my/rom/TweaksKernel;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 586
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 2297
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2329
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 2299
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2300
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksKernel;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2304
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2305
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksKernel;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2309
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2310
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/TweaksKernel;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2314
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2315
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/TweaksKernel;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2319
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2320
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksKernel;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2324
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2325
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/TweaksKernel;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2297
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
    const/4 v3, 0x0

    .line 2255
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ond:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ondemand"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2257
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ondemandx"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2259
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->smart:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "smartassv2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2261
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->brazil:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "brazilianwax"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2263
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->intx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "interactivex"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2265
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->inter:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "interactive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2267
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->lulz:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "lulzactive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2269
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->cons:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "conservative"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2271
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->stats:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "iostats"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2273
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->sched:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sysctlio"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2275
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->nov:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "novsync"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2277
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesv:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "yesvsync"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2279
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->norm:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "normsleep"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2281
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentle:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "gentsleep"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2283
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->newfair:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "newsleep"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2284
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 2286
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2220
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ond:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ondemand"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2222
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->ondx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ondemandx"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2224
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->smart:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "smartassv2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2226
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->brazil:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "brazilianwax"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2228
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->intx:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "interactivex"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2230
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->inter:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "interactive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2232
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->lulz:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "lulzactive"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2234
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->cons:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "conservative"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2236
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->stats:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "iostats"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2238
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->sched:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sysctlio"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2240
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->nov:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "novsync"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2242
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->yesv:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "yesvsync"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2244
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->norm:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "normsleep"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2246
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->gentle:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "gentsleep"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2248
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->newfair:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksKernel;->kPrefs:Landroid/content/SharedPreferences;

    const-string v2, "newsleep"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2249
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 2250
    return-void
.end method
