.class public Lcom/androguide/pimp/my/rom/HelpCenter;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HelpCenter.java"


# instance fields
.field App:Landroid/widget/TextView;

.field AppSmall:Landroid/widget/TextView;

.field private Applistener:Landroid/view/View$OnClickListener;

.field Dalvik:Landroid/widget/TextView;

.field DalvikSmall:Landroid/widget/TextView;

.field private Dalviklistener:Landroid/view/View$OnClickListener;

.field Gps:Landroid/widget/TextView;

.field GpsSmall:Landroid/widget/TextView;

.field private Gpslistener:Landroid/view/View$OnClickListener;

.field Kernel:Landroid/widget/TextView;

.field KernelSmall:Landroid/widget/TextView;

.field private Kernelistener:Landroid/view/View$OnClickListener;

.field Misc:Landroid/widget/TextView;

.field MiscSmall:Landroid/widget/TextView;

.field private Misclistener:Landroid/view/View$OnClickListener;

.field Multibold:Landroid/widget/TextView;

.field private Multilistener:Landroid/view/View$OnClickListener;

.field Multismall:Landroid/widget/TextView;

.field NetBold:Landroid/widget/TextView;

.field NetSmall:Landroid/widget/TextView;

.field private Netlistener:Landroid/view/View$OnClickListener;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->NetBold:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->NetSmall:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multibold:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multismall:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Kernel:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->KernelSmall:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalvik:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->DalvikSmall:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Misc:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->MiscSmall:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Gps:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->GpsSmall:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->App:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->AppSmall:Landroid/widget/TextView;

    .line 91
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$1;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Netlistener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$2;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multilistener:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$3;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Kernelistener:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$4;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalviklistener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$5;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Misclistener:Landroid/view/View$OnClickListener;

    .line 186
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$6;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$6;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Gpslistener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/androguide/pimp/my/rom/HelpCenter$7;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/HelpCenter$7;-><init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Applistener:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/HelpCenter;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 228
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 230
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/HelpCenter;->setHasOptionsMenu(Z)V

    .line 49
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 50
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    .line 53
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04006c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->NetBold:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04006d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->NetSmall:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04006f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multibold:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040070

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multismall:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040072

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Kernel:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040073

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->KernelSmall:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040075

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalvik:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040076

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->DalvikSmall:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04007b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Misc:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04007c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->MiscSmall:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040078

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Gps:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040079

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->GpsSmall:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04007e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->App:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04007f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->AppSmall:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->NetBold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Netlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->NetSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Netlistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multibold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multilistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multismall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Multilistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Kernel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Kernelistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->KernelSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Kernelistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalvik:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalviklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->DalvikSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalviklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Misc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Misclistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->MiscSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Misclistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Gps:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Gpslistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->GpsSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Gpslistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->App:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Applistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->AppSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Applistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalvik:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalviklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->DalvikSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->Dalviklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 236
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 238
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/HelpCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 243
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/HelpCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/HelpCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/HelpCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 258
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/HelpCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 263
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/HelpCenter;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
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
