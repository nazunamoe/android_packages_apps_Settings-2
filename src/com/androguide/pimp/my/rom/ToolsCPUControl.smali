.class public Lcom/androguide/pimp/my/rom/ToolsCPUControl;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsCPUControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;,
        Lcom/androguide/pimp/my/rom/ToolsCPUControl$GovListener;,
        Lcom/androguide/pimp/my/rom/ToolsCPUControl$IOListener;
    }
.end annotation


# static fields
.field public static final CURRENT_CPU:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

.field public static final GOVERNOR:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field public static final GOVERNORS_LIST:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

.field public static final GOV_PREF:Ljava/lang/String; = "gov"

.field public static final IO_PREF:Ljava/lang/String; = "io"

.field public static final IO_SCHEDULER:Ljava/lang/String; = "/sys/block/mmcblk0/queue/scheduler"

.field public static final MAX_CPU:Ljava/lang/String; = "max_cpu"

.field public static final MAX_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

.field public static final MIN_CPU:Ljava/lang/String; = "min_cpu"

.field public static final MIN_FREQ:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

.field public static final NUM_OF_CPUS:Ljava/lang/String; = "/sys/devices/system/cpu/present"

.field public static final SOB:Ljava/lang/String; = "cpu_boot"

.field public static final STEPS:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

.field public static final TAG:Ljava/lang/String; = "CPUSettings"

.field public static final TEGRA_MAX_FREQ:Ljava/lang/String; = "/sys/module/cpu_tegra/parameters/cpu_user_cap"

.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private TweakListener:Landroid/view/View$OnClickListener;

.field Tweaks:Landroid/widget/Button;

.field private availableFrequencies:[Ljava/lang/String;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private mActivity:Landroid/app/Activity;

.field protected mCurCPUHandler:Landroid/os/Handler;

.field private mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

.field private mCurFreq:Landroid/widget/TextView;

.field private mGovernor:Landroid/widget/Spinner;

.field private mIo:Landroid/widget/Spinner;

.field private mIsTegra3:Z

.field private mMaxFreqSetting:Ljava/lang/String;

.field private mMaxSlider:Landroid/widget/SeekBar;

.field private mMaxSpeedText:Landroid/widget/TextView;

.field private mMinFreqSetting:Ljava/lang/String;

.field private mMinSlider:Landroid/widget/SeekBar;

.field private mMinSpeedText:Landroid/widget/TextView;

.field private mNumOfCpu:I

.field private mSetOnBoot:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIsTegra3:Z

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I

    .line 197
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->TweakListener:Landroid/view/View$OnClickListener;

    .line 359
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurFreq:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/ToolsCPUControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I

    return v0
.end method

.method static synthetic access$4()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mhzString"

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 366
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 368
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 27
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->setHasOptionsMenu(Z)V

    .line 84
    invoke-super/range {p0 .. p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mActivity:Landroid/app/Activity;

    .line 87
    const v23, 0x7f030030

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 89
    .local v22, view:Landroid/view/View;
    const v23, 0x7f0400b0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->Tweaks:Landroid/widget/Button;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->Tweaks:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->TweakListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    sput-object v23, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->preferences:Landroid/content/SharedPreferences;

    .line 94
    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    .line 95
    const-string v23, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, availableFrequenciesLine:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 97
    const-string v23, " "

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Lcom/androguide/pimp/my/rom/ToolsCPUControl$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v17, v23, -0x1

    .line 107
    .local v17, frequenciesNum:I
    const-string v23, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, currentGovernor:Ljava/lang/String;
    invoke-static {}, Lcom/androguide/pimp/my/rom/util/Helpers;->getIOScheduler()Ljava/lang/String;

    move-result-object v15

    .line 109
    .local v15, currentIo:Ljava/lang/String;
    const-string v23, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, curMaxSpeed:Ljava/lang/String;
    const-string v23, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, curMinSpeed:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIsTegra3:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 113
    const-string v23, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, curTegraMaxSpeed:Ljava/lang/String;
    const/4 v12, 0x0

    .line 116
    .local v12, curTegraMax:I
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 117
    if-lez v12, :cond_1

    .line 118
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 125
    .end local v12           #curTegraMax:I
    .end local v13           #curTegraMaxSpeed:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v23, "/sys/devices/system/cpu/present"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 126
    .local v21, numOfCpus:Ljava/lang/String;
    const-string v23, "-"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, cpuCount:[Ljava/lang/String;
    array-length v0, v7

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 129
    const/16 v23, 0x0

    :try_start_1
    aget-object v23, v7, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 130
    .local v9, cpuStart:I
    const/16 v23, 0x1

    aget-object v23, v7, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 132
    .local v8, cpuEnd:I
    sub-int v23, v8, v9

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I

    .line 134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I

    move/from16 v23, v0

    if-gez v23, :cond_2

    .line 135
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v8           #cpuEnd:I
    .end local v9           #cpuStart:I
    :cond_2
    :goto_1
    const v23, 0x7f0400a3

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurFreq:Landroid/widget/TextView;

    .line 143
    const v23, 0x7f0400a6

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/SeekBar;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSlider:Landroid/widget/SeekBar;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSlider:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 145
    const v23, 0x7f0400a5

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSpeedText:Landroid/widget/TextView;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSpeedText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSlider:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSlider:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    const v23, 0x7f0400a9

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/SeekBar;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSlider:Landroid/widget/SeekBar;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSlider:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 152
    const v23, 0x7f0400a8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSpeedText:Landroid/widget/TextView;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSpeedText:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSlider:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSlider:Landroid/widget/SeekBar;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 157
    const v23, 0x7f0400ab

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mGovernor:Landroid/widget/Spinner;

    .line 158
    const-string v23, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static/range {v23 .. v23}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, availableGovernors:[Ljava/lang/String;
    new-instance v18, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    .line 160
    const v24, 0x1090008

    .line 159
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 161
    .local v18, governorAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v23, 0x1090009

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 162
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mGovernor:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mGovernor:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mGovernor:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    new-instance v24, Lcom/androguide/pimp/my/rom/ToolsCPUControl$GovListener;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$GovListener;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 169
    const v23, 0x7f0400ad

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Spinner;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIo:Landroid/widget/Spinner;

    .line 170
    invoke-static {}, Lcom/androguide/pimp/my/rom/util/Helpers;->getAvailableIOSchedulers()[Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, availableIo:[Ljava/lang/String;
    new-instance v20, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    .line 172
    const v24, 0x1090008

    .line 171
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 173
    .local v20, ioAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v23, 0x1090009

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 174
    const/16 v19, 0x0

    :goto_3
    array-length v0, v6

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIo:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIo:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setSelection(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIo:Landroid/widget/Spinner;

    move-object/from16 v23, v0

    new-instance v24, Lcom/androguide/pimp/my/rom/ToolsCPUControl$IOListener;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$IOListener;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 181
    const v23, 0x7f0400af

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ToggleButton;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mSetOnBoot:Landroid/widget/ToggleButton;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mSetOnBoot:Landroid/widget/ToggleButton;

    move-object/from16 v23, v0

    sget-object v24, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->preferences:Landroid/content/SharedPreferences;

    const-string v25, "cpu_boot"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mSetOnBoot:Landroid/widget/ToggleButton;

    move-object/from16 v23, v0

    new-instance v24, Lcom/androguide/pimp/my/rom/ToolsCPUControl$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    return-object v22

    .line 120
    .end local v5           #availableGovernors:[Ljava/lang/String;
    .end local v6           #availableIo:[Ljava/lang/String;
    .end local v7           #cpuCount:[Ljava/lang/String;
    .end local v18           #governorAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v19           #i:I
    .end local v20           #ioAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v21           #numOfCpus:Ljava/lang/String;
    .restart local v12       #curTegraMax:I
    .restart local v13       #curTegraMaxSpeed:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 121
    .local v16, ex:Ljava/lang/NumberFormatException;
    goto/16 :goto_0

    .line 136
    .end local v12           #curTegraMax:I
    .end local v13           #curTegraMaxSpeed:Ljava/lang/String;
    .end local v16           #ex:Ljava/lang/NumberFormatException;
    .restart local v7       #cpuCount:[Ljava/lang/String;
    .restart local v21       #numOfCpus:Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 137
    .restart local v16       #ex:Ljava/lang/NumberFormatException;
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I

    goto/16 :goto_1

    .line 163
    .end local v16           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #availableGovernors:[Ljava/lang/String;
    .restart local v18       #governorAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v19       #i:I
    :cond_3
    aget-object v23, v5, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 175
    .restart local v6       #availableIo:[Ljava/lang/String;
    .restart local v20       #ioAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_4
    aget-object v23, v6, v19

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 291
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;->interrupt()V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 374
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 406
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 376
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 381
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 386
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 391
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 401
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 374
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

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 212
    if-eqz p3, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 215
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->setMaxSpeed(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->setMinSpeed(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x7f0400a6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;-><init>(Lcom/androguide/pimp/my/rom/ToolsCPUControl;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    .line 284
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mCurCPUThread:Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ToolsCPUControl$CurCPUThread;->start()V

    .line 286
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 226
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .parameter "seekBar"

    .prologue
    .line 231
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 233
    .local v0, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mNumOfCpu:I

    if-lt v1, v2, :cond_1

    .line 238
    iget-boolean v2, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mIsTegra3:Z

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxFreqSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/module/cpu_tegra/parameters/cpu_user_cap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 241
    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v2, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxFreqSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const-string v5, "cpu0"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cpu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 235
    iget-object v2, v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "busybox echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinFreqSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    const-string v5, "cpu0"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cpu"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public setMaxSpeed(Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"

    .prologue
    .line 301
    const-string v1, ""

    .line 302
    .local v1, current:Ljava/lang/String;
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    aget-object v1, v4, p2

    .line 303
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 304
    .local v0, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 305
    .local v3, minSliderProgress:I
    if-gt p2, v3, :cond_0

    .line 306
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 307
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSpeedText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinFreqSetting:Ljava/lang/String;

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSpeedText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxFreqSetting:Ljava/lang/String;

    .line 312
    sget-object v4, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 313
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "max_cpu"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    return-void
.end method

.method public setMinSpeed(Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"

    .prologue
    .line 318
    const-string v1, ""

    .line 319
    .local v1, current:Ljava/lang/String;
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->availableFrequencies:[Ljava/lang/String;

    aget-object v1, v4, p2

    .line 320
    new-instance v0, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 321
    .local v0, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 322
    .local v3, maxSliderProgress:I
    if-lt p2, v3, :cond_0

    .line 323
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 324
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxSpeedText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMaxFreqSetting:Ljava/lang/String;

    .line 327
    :cond_0
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinSpeedText:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->mMinFreqSetting:Ljava/lang/String;

    .line 329
    sget-object v4, Lcom/androguide/pimp/my/rom/ToolsCPUControl;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 330
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "min_cpu"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    return-void
.end method
