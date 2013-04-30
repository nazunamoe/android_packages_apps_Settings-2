.class public Lcom/androguide/pimp/my/rom/TweaksTelephony;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksTelephony.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsTelephony"

.field public static final PREF_AMR:Ljava/lang/String; = "wideband"

.field public static final PREF_RETRY:Ljava/lang/String; = "retries"

.field public static final PREF_TIMER:Ljava/lang/String; = "timer"


# instance fields
.field private DetectListener:Landroid/view/View$OnClickListener;

.field public RETRY:I

.field public TIMER:I

.field private TelePrefs:Landroid/content/SharedPreferences;

.field private amr:Landroid/widget/ToggleButton;

.field private detect:Landroid/widget/Button;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field final_timer:I

.field private ll:Landroid/widget/ScrollView;

.field prox1:I

.field prox_value:Landroid/widget/TextView;

.field retry1:I

.field retry_amount:I

.field retry_value:Landroid/widget/TextView;

.field ring1:I

.field ring_value:Landroid/widget/TextView;

.field seekProx:Landroid/widget/SeekBar;

.field seekRetry:Landroid/widget/SeekBar;

.field seekRing:Landroid/widget/SeekBar;

.field seekSteps:Landroid/widget/SeekBar;

.field seekTimer:Landroid/widget/SeekBar;

.field steps1:I

.field steps_value:Landroid/widget/TextView;

.field timer1:I

.field timer_string:Ljava/lang/String;

.field timer_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 41
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->RETRY:I

    .line 42
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    .line 51
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->final_timer:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_string:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring1:I

    .line 55
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox1:I

    .line 56
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->steps1:I

    .line 57
    iput v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry1:I

    .line 58
    const/16 v0, 0x1388

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    .line 844
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksTelephony$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->DetectListener:Landroid/view/View$OnClickListener;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->amr:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/TweaksTelephony;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 969
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 971
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x0

    .line 80
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 81
    const v0, 0x7f030040

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsTelephony"

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    .line 85
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->detect:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->detect:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->DetectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401f0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->amr:Landroid/widget/ToggleButton;

    .line 89
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->amr:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v2, "wideband"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401e1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring_value:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040138

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRing:Landroid/widget/SeekBar;

    .line 93
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRing:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 95
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401e4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox_value:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04013f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekProx:Landroid/widget/SeekBar;

    .line 97
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekProx:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401e7

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->steps_value:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04013d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekSteps:Landroid/widget/SeekBar;

    .line 101
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekSteps:Landroid/widget/SeekBar;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 103
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401eb

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_value:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401ea

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRetry:Landroid/widget/SeekBar;

    .line 105
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "retries"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->RETRY:I

    .line 106
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRetry:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 108
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401ed

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_value:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401ec

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    .line 110
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "timer"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    .line 111
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 116
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->amr:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRing:Landroid/widget/SeekBar;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 352
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekProx:Landroid/widget/SeekBar;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 448
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekSteps:Landroid/widget/SeekBar;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksTelephony$5;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 541
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRetry:Landroid/widget/SeekBar;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$6;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 691
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksTelephony$7;-><init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 839
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "retries"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->RETRY:I

    .line 943
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRetry:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->RETRY:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 944
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "timer"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    .line 945
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 946
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "timer"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    .line 947
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 949
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 951
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 956
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "retries"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_amount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->RETRY:I

    .line 957
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRetry:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->RETRY:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 958
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TelePrefs:Landroid/content/SharedPreferences;

    const-string v1, "timer"

    iget v2, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer1:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    .line 959
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->TIMER:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 961
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 963
    return-void
.end method

.method public updateValues()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 865
    const-string v5, "ro.telephony.call_ring.delay"

    invoke-static {v5}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, ring:Ljava/lang/String;
    const-string v5, "disable"

    if-ne v3, v5, :cond_1

    .line 869
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring_value:Landroid/widget/TextView;

    const-string v6, "Current Value Not Found !"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    :goto_0
    const-string v5, "ro.lge.proximity.delay"

    invoke-static {v5}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, prox:Ljava/lang/String;
    const-string v5, "disable"

    if-ne v2, v5, :cond_3

    .line 888
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox_value:Landroid/widget/TextView;

    const-string v6, "Current Value Not Found !"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :goto_1
    const-string v5, "ro.config.vc_call_steps"

    invoke-static {v5}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 904
    .local v4, steps:Ljava/lang/String;
    const-string v5, "disable"

    if-ne v4, v5, :cond_5

    .line 906
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekSteps:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 907
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->steps_value:Landroid/widget/TextView;

    const-string v6, "Volume Steps Amount : 5"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 922
    :goto_2
    const-string v5, "ro.gsm.2nd_data_retries"

    invoke-static {v5}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    .local v1, mms:Ljava/lang/String;
    const-string v5, "disable"

    if-ne v1, v5, :cond_0

    .line 926
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRetry:Landroid/widget/SeekBar;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 927
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekTimer:Landroid/widget/SeekBar;

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 928
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->retry_value:Landroid/widget/TextView;

    const-string v6, "Retries : 3"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->timer_value:Landroid/widget/TextView;

    const-string v6, "Timer (milliseconds) : 5000"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    :cond_0
    return-void

    .line 871
    .end local v1           #mms:Ljava/lang/String;
    .end local v2           #prox:Ljava/lang/String;
    .end local v4           #steps:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 873
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 875
    .local v0, interval:I
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekRing:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 876
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring_value:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ring Delay : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 878
    .end local v0           #interval:I
    :cond_2
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->ring_value:Landroid/widget/TextView;

    const-string v6, "Current Value Not Found !"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 890
    .restart local v2       #prox:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 892
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 894
    .restart local v0       #interval:I
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekProx:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 895
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox_value:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Sensor Delay : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 897
    .end local v0           #interval:I
    :cond_4
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->prox_value:Landroid/widget/TextView;

    const-string v6, "Current Value Not Found !"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 909
    .restart local v4       #steps:Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 911
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 913
    .restart local v0       #interval:I
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekSteps:Landroid/widget/SeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 914
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->steps_value:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Volume Steps Amount : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 916
    .end local v0           #interval:I
    :cond_6
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->seekSteps:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 917
    iget-object v5, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony;->steps_value:Landroid/widget/TextView;

    const-string v6, "Volume Steps Amount : 5"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
