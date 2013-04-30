.class public Lcom/androguide/pimp/my/rom/TweaksMisc;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TweaksMisc.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsMisc"

.field public static final PREF_battery:Ljava/lang/String; = "battery"

.field public static final PREF_camera:Ljava/lang/String; = "camera"

.field public static final PREF_ext4:Ljava/lang/String; = "ext"

.field public static final PREF_extsd:Ljava/lang/String; = "extsd"

.field public static final PREF_flash:Ljava/lang/String; = "flash"

.field public static final PREF_intsd:Ljava/lang/String; = "intsd"

.field public static final PREF_jpg:Ljava/lang/String; = "jpg"

.field public static final PREF_quick:Ljava/lang/String; = "quick"

.field public static final PREF_sqlite:Ljava/lang/String; = "sql"

.field public static final PREF_zipalign:Ljava/lang/String; = "zipalign"


# instance fields
.field Apply:Landroid/widget/Button;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field Remove:Landroid/widget/Button;

.field private bat:Landroid/widget/CheckBox;

.field public battery:I

.field private cam:Landroid/widget/CheckBox;

.field public camera:I

.field private ext:Landroid/widget/CheckBox;

.field public ext4:I

.field private exts:Landroid/widget/CheckBox;

.field public extsd:I

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field public flash:I

.field private ints:Landroid/widget/CheckBox;

.field public intsd:I

.field private jp:Landroid/widget/CheckBox;

.field public jpg:I

.field private led:Landroid/widget/CheckBox;

.field private ll:Landroid/widget/ScrollView;

.field private quic:Landroid/widget/CheckBox;

.field public quick:I

.field private removeListener:Landroid/view/View$OnClickListener;

.field private sql:Landroid/widget/CheckBox;

.field public sqlite3:I

.field private xPrefs:Landroid/content/SharedPreferences;

.field private zip:Landroid/widget/CheckBox;

.field public zipalign:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 69
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sqlite3:I

    .line 70
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext4:I

    .line 71
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->intsd:I

    .line 72
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->extsd:I

    .line 73
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zipalign:I

    .line 74
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->battery:I

    .line 75
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->camera:I

    .line 76
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jpg:I

    .line 77
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->flash:I

    .line 78
    iput v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quick:I

    .line 80
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->Apply:Landroid/widget/Button;

    .line 81
    iput-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->Remove:Landroid/widget/Button;

    .line 431
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMisc$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$1;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 1094
    new-instance v0, Lcom/androguide/pimp/my/rom/TweaksMisc$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$2;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->removeListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/TweaksMisc;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$10(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->led:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$11(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quic:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sql:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ints:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$5(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->exts:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zip:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->bat:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$8(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->cam:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$9(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jp:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1730
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 1732
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksMisc;->setHasOptionsMenu(Z)V

    .line 91
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 92
    const v0, 0x7f03003d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    .line 95
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefsMisc"

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    .line 97
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->Apply:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->Apply:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040094

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->Remove:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->Remove:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->removeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040171

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sql:Landroid/widget/CheckBox;

    .line 107
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sql:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$3;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$3;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040173

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext:Landroid/widget/CheckBox;

    .line 140
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$4;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$4;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040195

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ints:Landroid/widget/CheckBox;

    .line 172
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ints:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$5;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$5;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040179

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->exts:Landroid/widget/CheckBox;

    .line 205
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->exts:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$6;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$6;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040174

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zip:Landroid/widget/CheckBox;

    .line 237
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zip:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$7;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$7;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040175

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->bat:Landroid/widget/CheckBox;

    .line 269
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->bat:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$8;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$8;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040194

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->cam:Landroid/widget/CheckBox;

    .line 301
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->cam:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$9;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$9;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 332
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040181

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jp:Landroid/widget/CheckBox;

    .line 333
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jp:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$10;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$10;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 364
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401bd

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->led:Landroid/widget/CheckBox;

    .line 365
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->led:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$11;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$11;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 398
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0401be

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quic:Landroid/widget/CheckBox;

    .line 399
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quic:Landroid/widget/CheckBox;

    new-instance v1, Lcom/androguide/pimp/my/rom/TweaksMisc$12;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/TweaksMisc$12;-><init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 428
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 1738
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1770
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 1740
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1741
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/TweaksMisc;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1745
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1746
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/TweaksMisc;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1750
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1751
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/TweaksMisc;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1755
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1756
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/TweaksMisc;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1760
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1761
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/TweaksMisc;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1765
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1766
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/TweaksMisc;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1738
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

    .line 1696
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sql:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sql"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1697
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ext"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1698
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ints:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "intsd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1699
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->exts:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "extsd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1700
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zip:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "zipalign"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1701
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->bat:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "battery"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1702
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->cam:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "camera"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1703
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jp:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "jpg"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1704
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->led:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "flash"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1705
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quic:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "quick"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1707
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 1708
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1713
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->sql:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "sql"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1714
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ext:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ext"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1715
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->ints:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "intsd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1716
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->exts:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "extsd"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1717
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->zip:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "zipalign"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1718
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->bat:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "battery"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1719
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->cam:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "camera"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1720
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->jp:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "jpg"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1721
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->led:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "flash"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1722
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->quic:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;

    const-string v2, "quick"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1724
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 1725
    return-void
.end method
