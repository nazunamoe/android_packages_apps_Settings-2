.class public Lcom/androguide/pimp/my/rom/ToolsVoltageControl;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsVoltageControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;,
        Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;
    }
.end annotation


# static fields
.field public static final DIALOG_EDIT_VOLT:I = 0x0

.field public static final KEY_APPLY_BOOT:Ljava/lang/String; = "apply_voltages_at_boot"

.field public static final MV_TABLE0:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

.field public static final MV_TABLE1:Ljava/lang/String; = "/sys/devices/system/cpu/cpu1/cpufreq/UV_mV_table"

.field public static final MV_TABLE2:Ljava/lang/String; = "/sys/devices/system/cpu/cpu2/cpufreq/UV_mV_table"

.field public static final MV_TABLE3:Ljava/lang/String; = "/sys/devices/system/cpu/cpu3/cpufreq/UV_mV_table"

.field private static final STEPS:[I = null

.field private static final TAG:Ljava/lang/String; = "VoltageControlActivity"

.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

.field private mVoltage:Lcom/androguide/pimp/my/rom/Voltage;

.field private mVoltages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/Voltage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->STEPS:[I

    .line 180
    return-void

    .line 174
    :array_0
    .array-data 0x4
        0x58t 0x2t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t
        0x8at 0x2t 0x0t 0x0t
        0xa3t 0x2t 0x0t 0x0t
        0xbct 0x2t 0x0t 0x0t
        0xd5t 0x2t 0x0t 0x0t
        0xeet 0x2t 0x0t 0x0t
        0x7t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x39t 0x3t 0x0t 0x0t
        0x52t 0x3t 0x0t 0x0t
        0x6bt 0x3t 0x0t 0x0t
        0x84t 0x3t 0x0t 0x0t
        0x9dt 0x3t 0x0t 0x0t
        0xb6t 0x3t 0x0t 0x0t
        0xcft 0x3t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0x1t 0x4t 0x0t 0x0t
        0x1at 0x4t 0x0t 0x0t
        0x33t 0x4t 0x0t 0x0t
        0x4ct 0x4t 0x0t 0x0t
        0x65t 0x4t 0x0t 0x0t
        0x7et 0x4t 0x0t 0x0t
        0x97t 0x4t 0x0t 0x0t
        0xb0t 0x4t 0x0t 0x0t
        0xc9t 0x4t 0x0t 0x0t
        0xe2t 0x4t 0x0t 0x0t
        0xfbt 0x4t 0x0t 0x0t
        0x14t 0x5t 0x0t 0x0t
        0x2dt 0x5t 0x0t 0x0t
        0x46t 0x5t 0x0t 0x0t
        0x5ft 0x5t 0x0t 0x0t
        0x78t 0x5t 0x0t 0x0t
        0x91t 0x5t 0x0t 0x0t
        0xaat 0x5t 0x0t 0x0t
        0xc3t 0x5t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xf5t 0x5t 0x0t 0x0t
        0xet 0x6t 0x0t 0x0t
        0x27t 0x6t 0x0t 0x0t
        0x40t 0x6t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Lcom/androguide/pimp/my/rom/Voltage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;

    return-void
.end method

.method static synthetic access$4(I)I
    .locals 1
    .parameter

    .prologue
    .line 182
    invoke-static {p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getNearestStepIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5()[I
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->STEPS:[I

    return-object v0
.end method

.method static synthetic access$6(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Lcom/androguide/pimp/my/rom/Voltage;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;

    return-object v0
.end method

.method private static getNearestStepIndex(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->STEPS:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 191
    :cond_0
    return v1

    .line 185
    :cond_1
    sget-object v2, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->STEPS:[I

    aget v2, v2, v0

    if-le p0, v2, :cond_0

    .line 186
    add-int/lit8 v1, v1, 0x1

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 12
    .parameter "preferences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/androguide/pimp/my/rom/Voltage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v8, volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x100

    invoke-direct {v0, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 149
    .local v0, br:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 150
    .local v4, line:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 165
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 171
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 151
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    const-string v9, "\\s+"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, values:[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 153
    array-length v9, v6

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 154
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "mhz:"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, freq:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v1, v6, v9

    .line 156
    .local v1, currentMv:Ljava/lang/String;
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, savedMv:Ljava/lang/String;
    new-instance v7, Lcom/androguide/pimp/my/rom/Voltage;

    invoke-direct {v7}, Lcom/androguide/pimp/my/rom/Voltage;-><init>()V

    .line 158
    .local v7, voltage:Lcom/androguide/pimp/my/rom/Voltage;
    invoke-virtual {v7, v3}, Lcom/androguide/pimp/my/rom/Voltage;->setFreq(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v7, v1}, Lcom/androguide/pimp/my/rom/Voltage;->setCurrentMV(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v7, v5}, Lcom/androguide/pimp/my/rom/Voltage;->setSavedMV(Ljava/lang/String;)V

    .line 161
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 166
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #currentMv:Ljava/lang/String;
    .end local v3           #freq:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #savedMv:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    .end local v7           #voltage:Lcom/androguide/pimp/my/rom/Voltage;
    :catch_0
    move-exception v2

    .line 167
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v9, "VoltageControlActivity"

    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 169
    .local v2, e:Ljava/io/IOException;
    const-string v9, "VoltageControlActivity"

    const-string v10, "Error reading /sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 400
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 402
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mActivity:Landroid/app/Activity;

    .line 70
    const v3, 0x7f030042

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->preferences:Landroid/content/SharedPreferences;

    .line 73
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    iput-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 75
    const v3, 0x7f0401f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 76
    .local v0, listView:Landroid/widget/ListView;
    const v3, 0x7f0401f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 77
    .local v1, setOnBoot:Landroid/widget/ToggleButton;
    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    .line 78
    sget-object v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->preferences:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;

    .line 80
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const v3, 0x7f0401f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    const v3, 0x7f0401f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 84
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    :cond_0
    sget-object v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "apply_voltages_at_boot"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 88
    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$1;

    invoke-direct {v3, p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)V

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    const v3, 0x7f0401f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 99
    new-instance v4, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;

    invoke-direct {v4, p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->setListItems(Ljava/util/List;)V

    .line 132
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;

    invoke-direct {v3, p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    return-object v2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 408
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 440
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 410
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 415
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 420
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 425
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 430
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 435
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 408
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

.method protected removeDialog(I)V
    .locals 5
    .parameter "pDialogId"

    .prologue
    .line 307
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 308
    .local v1, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 309
    .local v3, ftr:Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    .line 310
    .local v2, fragmentDialog:Lcom/actionbarsherlock/app/SherlockDialogFragment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .end local v2           #fragmentDialog:Lcom/actionbarsherlock/app/SherlockDialogFragment;
    check-cast v2, Lcom/actionbarsherlock/app/SherlockDialogFragment;

    .line 311
    .restart local v2       #fragmentDialog:Lcom/actionbarsherlock/app/SherlockDialogFragment;
    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 313
    .local v0, f:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 315
    .end local v0           #f:Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 19
    .parameter "id"

    .prologue
    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, dialog:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    if-eqz v3, :cond_1

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 295
    .local v5, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 296
    .local v7, ftr:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;->newInstance(Landroid/app/Dialog;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;

    move-result-object v8

    .line 297
    .local v8, newFragment:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/actionbarsherlock/app/SherlockDialogFragment;

    .line 298
    .local v6, fragmentDialog:Lcom/actionbarsherlock/app/SherlockDialogFragment;
    if-eqz v6, :cond_0

    .line 299
    invoke-virtual {v7, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 300
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 302
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v5, v15}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 304
    .end local v5           #fm:Landroid/support/v4/app/FragmentManager;
    .end local v6           #fragmentDialog:Lcom/actionbarsherlock/app/SherlockDialogFragment;
    .end local v7           #ftr:Landroid/support/v4/app/FragmentTransaction;
    .end local v8           #newFragment:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;
    :cond_1
    return-void

    .line 198
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mActivity:Landroid/app/Activity;

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 199
    .local v4, factory:Landroid/view/LayoutInflater;
    const v15, 0x7f030041

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 202
    .local v11, voltageDialog:Landroid/view/View;
    const v15, 0x7f040057

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 201
    check-cast v12, Landroid/widget/EditText;

    .line 203
    .local v12, voltageEdit:Landroid/widget/EditText;
    const v15, 0x7f0401f1

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/SeekBar;

    .line 205
    .local v14, voltageSeek:Landroid/widget/SeekBar;
    const v15, 0x7f040058

    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 204
    check-cast v13, Landroid/widget/TextView;

    .line 207
    .local v13, voltageMeter:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;

    invoke-virtual {v15}, Lcom/androguide/pimp/my/rom/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, savedMv:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 209
    .local v10, savedVolt:I
    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v15, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v12, v13, v14}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v15}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 239
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " mV"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/16 v15, 0x28

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setMax(I)V

    .line 241
    invoke-static {v10}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getNearestStepIndex(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 242
    new-instance v15, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$5;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;Landroid/widget/TextView;Landroid/widget/EditText;)V

    invoke-virtual {v14, v15}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 267
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltage:Lcom/androguide/pimp/my/rom/Voltage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/androguide/pimp/my/rom/Voltage;->getFreq()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0901e8

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 269
    invoke-virtual {v15, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0901e9

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v12}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$6;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;ILandroid/widget/EditText;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 281
    const/16 v16, 0x0

    .line 282
    new-instance v17, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$7;-><init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;I)V

    .line 281
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    .line 287
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 288
    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
