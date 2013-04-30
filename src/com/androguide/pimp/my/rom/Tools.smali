.class public Lcom/androguide/pimp/my/rom/Tools;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Tools.java"


# instance fields
.field Anim:Landroid/widget/TextView;

.field private AnimListener:Landroid/view/View$OnClickListener;

.field AnimSmall:Landroid/widget/TextView;

.field CPU:Landroid/widget/TextView;

.field private CPUListener:Landroid/view/View$OnClickListener;

.field CPUSmall:Landroid/widget/TextView;

.field Density:Landroid/widget/TextView;

.field private DensityListener:Landroid/view/View$OnClickListener;

.field DensitySmall:Landroid/widget/TextView;

.field GPS:Landroid/widget/TextView;

.field GPSSmall:Landroid/widget/TextView;

.field private GpsListener:Landroid/view/View$OnClickListener;

.field Hidden:Landroid/widget/TextView;

.field private HiddenListener:Landroid/view/View$OnClickListener;

.field HiddenSmall:Landroid/widget/TextView;

.field Initd:Landroid/widget/TextView;

.field private InitdListener:Landroid/view/View$OnClickListener;

.field InitdSmall:Landroid/widget/TextView;

.field Lock:Landroid/widget/TextView;

.field private LockListener:Landroid/view/View$OnClickListener;

.field LockSmall:Landroid/widget/TextView;

.field Rescue:Landroid/widget/TextView;

.field private RescueListener:Landroid/view/View$OnClickListener;

.field RescueSmall:Landroid/widget/TextView;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Rescue:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->RescueSmall:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Initd:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->InitdSmall:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPU:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPUSmall:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Density:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->DensitySmall:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Anim:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->AnimSmall:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Lock:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->LockSmall:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GPS:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GPSSmall:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Hidden:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->HiddenSmall:Landroid/widget/TextView;

    .line 105
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$1;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->RescueListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$2;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->InitdListener:Landroid/view/View$OnClickListener;

    .line 140
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$3;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPUListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$4;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->DensityListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$5;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->AnimListener:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$6;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$6;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->LockListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$7;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$7;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GpsListener:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v0, Lcom/androguide/pimp/my/rom/Tools$8;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tools$8;-><init>(Lcom/androguide/pimp/my/rom/Tools;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->HiddenListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/Tools;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 248
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 250
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/Tools;->setHasOptionsMenu(Z)V

    .line 53
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 54
    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    .line 56
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040122

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Rescue:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040123

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->RescueSmall:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Rescue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->RescueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->RescueSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->RescueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040125

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Initd:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040126

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->InitdSmall:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Initd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->InitdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->InitdSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->InitdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040128

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Density:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040129

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->DensitySmall:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Density:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->DensityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->DensitySmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->DensityListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04004e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPU:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04004f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPUSmall:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040078

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GPS:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040079

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GPSSmall:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04012f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Hidden:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040130

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->HiddenSmall:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04012c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Lock:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04012d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->LockSmall:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040097

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Anim:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040098

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->AnimSmall:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->CPUListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->CPUSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->CPUListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GPS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->GpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->GPSSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->GpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Hidden:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->HiddenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->HiddenSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->HiddenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Lock:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->LockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->LockSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->LockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->Anim:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->AnimListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->AnimSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tools;->AnimListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tools;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 256
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 288
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 258
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/Tools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/Tools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/Tools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/Tools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 278
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/Tools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 283
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tools;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/Tools;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
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
