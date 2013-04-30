.class public Lcom/androguide/pimp/my/rom/TweaksNetwork;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksNetwork.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsNet"

.field public static final PREF_DNS:Ljava/lang/String; = "DNS"

.field public static final PREF_HSUPA:Ljava/lang/String; = "HSUPA"

.field public static final PREF_IPV:Ljava/lang/String; = "IPv4"

.field public static final PREF_PPP:Ljava/lang/String; = "ppp"

.field public static final PREF_REDIRECTS:Ljava/lang/String; = "Redirects"

.field public static final PREF_SOURCEROUTE:Ljava/lang/String; = "Source-Route"

.field public static final PREF_STREAM:Ljava/lang/String; = "Stream"

.field public static final PREF_SYN:Ljava/lang/String; = "Syn_attacks"

.field public static final PREF_TIMEWAIT:Ljava/lang/String; = "Timewait"

.field public static final PREF_WIFI:Ljava/lang/String; = "Wifi"


# instance fields
.field Apply:Landroid/widget/Button;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field private DetectListener:Landroid/view/View$OnClickListener;

.field private Remove:Landroid/widget/Button;

.field private RemoveListener:Landroid/view/View$OnClickListener;

.field private cb:Landroid/widget/CheckBox;

.field private detect:Landroid/widget/Button;

.field private dns:Landroid/widget/CheckBox;

.field public dns2:I

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private hsupa:Landroid/widget/CheckBox;

.field public hsupa1:I

.field private info1:Landroid/widget/ImageView;

.field private info2:Landroid/widget/ImageView;

.field private info2Listener:Landroid/view/View$OnClickListener;

.field private infoListener:Landroid/view/View$OnClickListener;

.field private ipv:Landroid/widget/CheckBox;

.field public ipv2:I

.field private ll:Landroid/widget/ScrollView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private ppp:Landroid/widget/CheckBox;

.field public ppp2:I

.field private redirects:Landroid/widget/CheckBox;

.field public redirects2:I

.field scan1:I

.field seekbar:Landroid/widget/SeekBar;

.field shebang1:Ljava/lang/String;

.field shebang2:Ljava/lang/String;

.field private sourceroute:Landroid/widget/CheckBox;

.field public sourceroute2:I

.field private stream:Landroid/widget/CheckBox;

.field public stream1:I

.field private syn:Landroid/widget/CheckBox;

.field public syn2:I

.field private timewait:Landroid/widget/CheckBox;

.field public timewait2:I

.field value:Landroid/widget/TextView;

.field public wifi1:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 60
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->scan1:I

    .line 86
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->wifi1:I

    .line 87
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream1:I

    .line 88
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa1:I

    .line 90
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects2:I

    .line 91
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute2:I

    .line 92
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns2:I

    .line 93
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv2:I

    .line 94
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait2:I

    .line 95
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn2:I

    .line 96
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp2:I

    .line 98
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->Apply:Landroid/widget/Button;

    .line 99
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->Remove:Landroid/widget/Button;

    .line 101
    const-string v0, "sed -i \'1 c\\"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->shebang1:Ljava/lang/String;

    .line 102
    const-string v0, "#!/system/bin/sh\' /system/etc/init.d/99Pimp_my_Rom"

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->shebang2:Ljava/lang/String;

    .line 595
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->DetectListener:Landroid/view/View$OnClickListener;

    .line 610
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->infoListener:Landroid/view/View$OnClickListener;

    .line 626
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->info2Listener:Landroid/view/View$OnClickListener;

    .line 643
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 1324
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->RemoveListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->cb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$9(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1971
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1973
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->setHasOptionsMenu(Z)V

    .line 111
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 112
    const v0, 0x7f03003f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    .line 114
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsNet"

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    .line 116
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04009d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->detect:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->detect:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->DetectListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401db

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->value:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040138

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->seekbar:Landroid/widget/SeekBar;

    .line 121
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->seekbar:Landroid/widget/SeekBar;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 123
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040093

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->info1:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->info1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->infoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040082

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->info2:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->info2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->info2Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->Apply:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->Apply:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040094

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->Remove:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->Remove:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->RemoveListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->seekbar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$6;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 236
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040171

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->cb:Landroid/widget/CheckBox;

    .line 237
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->cb:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$7;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$7;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040172

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream:Landroid/widget/CheckBox;

    .line 273
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$8;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$8;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 307
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040195

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa:Landroid/widget/CheckBox;

    .line 308
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$9;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$9;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040179

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects:Landroid/widget/CheckBox;

    .line 345
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$10;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$10;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 379
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040174

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute:Landroid/widget/CheckBox;

    .line 380
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 415
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040175

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns:Landroid/widget/CheckBox;

    .line 416
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 450
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040194

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv:Landroid/widget/CheckBox;

    .line 451
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$13;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$13;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 484
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040181

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait:Landroid/widget/CheckBox;

    .line 485
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$14;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$14;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 518
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040182

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn:Landroid/widget/CheckBox;

    .line 519
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$15;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$15;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 558
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040190

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp:Landroid/widget/CheckBox;

    .line 559
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksNetwork$16;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksNetwork$16;-><init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 590
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1979
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 2011
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 1981
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1982
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1986
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1987
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1991
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1992
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1996
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1997
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2001
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2002
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2006
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2007
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1979
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

    .line 1926
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->cb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1927
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Stream"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1928
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "HSUPA"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1929
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Redirects"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1930
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Source-Route"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1931
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DNS"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1932
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "IPv4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1933
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Timewait"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1934
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Syn_attacks"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1935
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ppp"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1937
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 1938
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1943
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->cb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1944
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->stream:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Stream"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1945
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->hsupa:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "HSUPA"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1946
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->redirects:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Redirects"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1947
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Source-Route"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1948
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "DNS"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1949
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ipv:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "IPv4"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1950
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->timewait:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Timewait"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1951
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->syn:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Syn_attacks"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1952
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->ppp:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ppp"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1954
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 1956
    return-void
.end method

.method protected toastMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1966
    return-void
.end method

.method public updateValues()V
    .locals 5

    .prologue
    .line 2019
    const-string v2, "wifi.supplicant_scan_interval"

    invoke-static {v2}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2021
    .local v1, scan:Ljava/lang/String;
    const-string v2, "disable"

    if-ne v1, v2, :cond_0

    .line 2023
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->value:Landroid/widget/TextView;

    const-string v3, "Current Value Not Found !"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2040
    :goto_0
    return-void

    .line 2027
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2030
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2032
    .local v0, interval:I
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2033
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->value:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scan Interval : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2037
    .end local v0           #interval:I
    :cond_1
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork;->value:Landroid/widget/TextView;

    const-string v3, "Current Value Not Found !"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
