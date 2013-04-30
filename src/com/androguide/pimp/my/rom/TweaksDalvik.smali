.class public Lcom/androguide/pimp/my/rom/TweaksDalvik;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksDalvik.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsDalvik"

.field public static final PREF_BYT:Ljava/lang/String; = "bytecode-verif"

.field public static final PREF_DALVIK:Ljava/lang/String; = "Transparency"

.field public static final PREF_DEX:Ljava/lang/String; = "Dexopt-data-only"

.field public static final PREF_ERROR:Ljava/lang/String; = "Error_check"

.field public static final PREF_HW:Ljava/lang/String; = "RegisterMap"

.field public static final PREF_JIT:Ljava/lang/String; = "jit"

.field public static final PREF_JNI:Ljava/lang/String; = "jni"

.field public static final PREF_MINFREE:Ljava/lang/String; = "minfree"

.field public static final PREF_OOM:Ljava/lang/String; = "oom"

.field public static final PREF_ZRAM:Ljava/lang/String; = "zram"


# instance fields
.field Apply:Landroid/widget/Button;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field private DalvikSharedPrefs:Landroid/content/SharedPreferences;

.field public MIN:I

.field public MINP:I

.field public OOM:I

.field public OOMP:I

.field public ZRAM:I

.field public ZRAMP:I

.field private byt:Landroid/widget/ToggleButton;

.field private dex:Landroid/widget/ToggleButton;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private free:Landroid/widget/RadioGroup;

.field growth1:I

.field heap1:I

.field private jit:Landroid/widget/ToggleButton;

.field private jni:Landroid/widget/ToggleButton;

.field limit:Landroid/widget/TextView;

.field private ll:Landroid/widget/ScrollView;

.field m:Ljava/lang/String;

.field map:Ljava/lang/String;

.field private oom:Landroid/widget/RadioGroup;

.field opti:Ljava/lang/String;

.field final radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field final radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private reg:Landroid/widget/ToggleButton;

.field seekbar:Landroid/widget/SeekBar;

.field seekbar2:Landroid/widget/SeekBar;

.field seekbar3:Landroid/widget/SeekBar;

.field start:Landroid/widget/TextView;

.field start1:I

.field stepSize:I

.field stepSize2:I

.field value:Landroid/widget/TextView;

.field verif:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 57
    const-string v0, "m"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->m:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->verif:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->opti:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->map:Ljava/lang/String;

    .line 62
    const/16 v0, 0x10

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->stepSize:I

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->stepSize2:I

    .line 64
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->heap1:I

    .line 65
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->growth1:I

    .line 66
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->start1:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->Apply:Landroid/widget/Button;

    .line 88
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    .line 89
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    .line 90
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ZRAM:I

    .line 92
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    .line 93
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    .line 94
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ZRAMP:I

    .line 1289
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1332
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1375
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jit:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jni:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->dex:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->byt:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1517
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1519
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 112
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->setHasOptionsMenu(Z)V

    .line 114
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 115
    const v8, 0x7f030039

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    .line 118
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040136

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->value:Landroid/widget/TextView;

    .line 119
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f04013a

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->limit:Landroid/widget/TextView;

    .line 120
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f04013c

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->start:Landroid/widget/TextView;

    .line 122
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040138

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar:Landroid/widget/SeekBar;

    .line 123
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar:Landroid/widget/SeekBar;

    const/16 v9, 0x190

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 126
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f04013f

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar2:Landroid/widget/SeekBar;

    .line 127
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar2:Landroid/widget/SeekBar;

    const/16 v9, 0x60

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 129
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f04013d

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar3:Landroid/widget/SeekBar;

    .line 130
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar3:Landroid/widget/SeekBar;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 138
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 141
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksDalvik$4;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "getprop dalvik.vm.heapsize"

    aput-object v11, v9, v10

    invoke-direct {v0, p0, v8, v9}, Lcom/androguide/pimp/my/rom/TweaksDalvik$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;I[Ljava/lang/String;)V

    .line 167
    .local v0, command:Lcom/stericson/RootTools/Command;
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 209
    .end local v0           #command:Lcom/stericson/RootTools/Command;
    :goto_0
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 212
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 215
    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksDalvik$5;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "getprop dalvik.vm.heapgrowthlimit"

    aput-object v11, v9, v10

    invoke-direct {v1, p0, v8, v9}, Lcom/androguide/pimp/my/rom/TweaksDalvik$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;I[Ljava/lang/String;)V

    .line 237
    .local v1, command2:Lcom/stericson/RootTools/Command;
    const/4 v8, 0x1

    :try_start_1
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    .line 282
    .end local v1           #command2:Lcom/stericson/RootTools/Command;
    :goto_1
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 285
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 288
    new-instance v2, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "getprop dalvik.vm.heapstartsize"

    aput-object v11, v9, v10

    invoke-direct {v2, p0, v8, v9}, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;I[Ljava/lang/String;)V

    .line 312
    .local v2, command3:Lcom/stericson/RootTools/Command;
    const/4 v8, 0x1

    :try_start_2
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_8

    .line 353
    .end local v2           #command3:Lcom/stericson/RootTools/Command;
    :goto_2
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar:Landroid/widget/SeekBar;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$7;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 443
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar2:Landroid/widget/SeekBar;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$8;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$8;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 545
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar3:Landroid/widget/SeekBar;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$9;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$9;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 643
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040154

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->Apply:Landroid/widget/Button;

    .line 644
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->Apply:Landroid/widget/Button;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v9, "SharedPrefsDalvik"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    .line 648
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040144

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;

    .line 650
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f04005a

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioGroup;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    .line 651
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, "oom"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    .line 652
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 654
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "RegisterMap"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 656
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f0400ce

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioGroup;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    .line 657
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, "minfree"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    .line 658
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 661
    iget v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    const v9, 0x7f04005d

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 662
    :cond_0
    iget v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    const v9, 0x7f04005f

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 663
    :cond_1
    iget v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    const v9, 0x7f040060

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 665
    :cond_2
    iget v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    const v9, 0x7f040140

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 666
    :cond_3
    iget v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    const v9, 0x7f040141

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 667
    :cond_4
    iget v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    const v9, 0x7f040142

    invoke-virtual {v8, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 671
    :cond_5
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 704
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040151

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jit:Landroid/widget/ToggleButton;

    .line 705
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040152

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jni:Landroid/widget/ToggleButton;

    .line 706
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040066

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->dex:Landroid/widget/ToggleButton;

    .line 707
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    const v9, 0x7f040153

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ToggleButton;

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->byt:Landroid/widget/ToggleButton;

    .line 709
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v9, "SharedPrefsDalvik"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    .line 711
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jit:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "jit"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 712
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jni:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "jni"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 713
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->dex:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "Dexopt-data-only"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 714
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->byt:Landroid/widget/ToggleButton;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v10, "bytecode-verif"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 719
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jit:Landroid/widget/ToggleButton;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$11;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$11;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 860
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->jni:Landroid/widget/ToggleButton;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$12;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$12;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1001
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->dex:Landroid/widget/ToggleButton;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$13;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1143
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->byt:Landroid/widget/ToggleButton;

    new-instance v9, Lcom/androguide/pimp/my/rom/TweaksDalvik$14;

    invoke-direct {v9, p0}, Lcom/androguide/pimp/my/rom/TweaksDalvik$14;-><init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1285
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->ll:Landroid/widget/ScrollView;

    return-object v8

    .line 168
    .restart local v0       #command:Lcom/stericson/RootTools/Command;
    :catch_0
    move-exception v5

    .line 170
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 171
    .end local v5           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    .line 173
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 174
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 176
    .local v5, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 182
    .end local v0           #command:Lcom/stericson/RootTools/Command;
    .end local v5           #e:Ljava/util/concurrent/TimeoutException;
    :cond_6
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 183
    .local v3, context:Landroid/content/Context;
    const-string v7, "Do you have root permissions ?"

    .line 184
    .local v7, txt:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 185
    .local v4, duration:I
    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 186
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 193
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_7
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 194
    .restart local v3       #context:Landroid/content/Context;
    const-string v7, "Busybox not found ! Please install it !"

    .line 195
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 196
    .restart local v4       #duration:I
    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 197
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 199
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 238
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    .restart local v1       #command2:Lcom/stericson/RootTools/Command;
    :catch_3
    move-exception v5

    .line 240
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 241
    .end local v5           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v5

    .line 243
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 244
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 246
    .local v5, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_1

    .line 252
    .end local v1           #command2:Lcom/stericson/RootTools/Command;
    .end local v5           #e:Ljava/util/concurrent/TimeoutException;
    :cond_8
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 253
    .restart local v3       #context:Landroid/content/Context;
    const-string v7, "Do you have root permissions ?"

    .line 254
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 255
    .restart local v4       #duration:I
    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 256
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 257
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 263
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_9
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 264
    .restart local v3       #context:Landroid/content/Context;
    const-string v7, "Busybox not found ! Please install it !"

    .line 265
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 266
    .restart local v4       #duration:I
    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 267
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 269
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 313
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    .restart local v2       #command3:Lcom/stericson/RootTools/Command;
    :catch_6
    move-exception v5

    .line 315
    .local v5, e:Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 316
    .end local v5           #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v5

    .line 318
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 319
    .end local v5           #e:Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 321
    .local v5, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_2

    .line 327
    .end local v2           #command3:Lcom/stericson/RootTools/Command;
    .end local v5           #e:Ljava/util/concurrent/TimeoutException;
    :cond_a
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 328
    .restart local v3       #context:Landroid/content/Context;
    const-string v7, "Do you have root permissions ?"

    .line 329
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 330
    .restart local v4       #duration:I
    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 331
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 332
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 338
    .end local v3           #context:Landroid/content/Context;
    .end local v4           #duration:I
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #txt:Ljava/lang/CharSequence;
    :cond_b
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 339
    .restart local v3       #context:Landroid/content/Context;
    const-string v7, "Busybox not found ! Please install it !"

    .line 340
    .restart local v7       #txt:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    .line 341
    .restart local v4       #duration:I
    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 342
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 344
    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1525
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1557
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 1527
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1528
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1532
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1533
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1537
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1538
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1542
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1543
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1547
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1548
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1552
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1553
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1525
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
    const/4 v2, 0x1

    .line 1488
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "oom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    .line 1489
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1491
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "minfree"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    .line 1492
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1494
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "RegisterMap"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1496
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 1498
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1503
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "oom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOMP:I

    .line 1504
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->oom:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1506
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "minfree"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MINP:I

    .line 1507
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->free:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->radiochecker2:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1509
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "RegisterMap"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1512
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 1514
    return-void
.end method
