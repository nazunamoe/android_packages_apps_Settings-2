.class public Lcom/androguide/pimp/my/rom/Tweaks;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Tweaks.java"


# instance fields
.field Dalvik:Landroid/widget/TextView;

.field private DalvikListener:Landroid/view/View$OnClickListener;

.field DalvikSmall:Landroid/widget/TextView;

.field Enable:Landroid/widget/TextView;

.field private EnableListener:Landroid/view/View$OnClickListener;

.field EnableSmall:Landroid/widget/TextView;

.field Kernel:Landroid/widget/TextView;

.field private KernelListener:Landroid/view/View$OnClickListener;

.field KernelSmall:Landroid/widget/TextView;

.field Misc:Landroid/widget/TextView;

.field private MiscListener:Landroid/view/View$OnClickListener;

.field MiscSmall:Landroid/widget/TextView;

.field Multi:Landroid/widget/TextView;

.field private MultiListener:Landroid/view/View$OnClickListener;

.field MultiSmall:Landroid/widget/TextView;

.field private NetListener:Landroid/view/View$OnClickListener;

.field Network:Landroid/widget/TextView;

.field NetworkSmall:Landroid/widget/TextView;

.field Telephony:Landroid/widget/TextView;

.field private TelephonyListener:Landroid/view/View$OnClickListener;

.field TelephonySmall:Landroid/widget/TextView;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Network:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->NetworkSmall:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Multi:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MultiSmall:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Dalvik:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->DalvikSmall:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Kernel:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->KernelSmall:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Enable:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->EnableSmall:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Misc:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MiscSmall:Landroid/widget/TextView;

    .line 42
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Telephony:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->TelephonySmall:Landroid/widget/TextView;

    .line 97
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$1;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->NetListener:Landroid/view/View$OnClickListener;

    .line 114
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$2;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MultiListener:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$3;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->DalvikListener:Landroid/view/View$OnClickListener;

    .line 150
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$4;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->KernelListener:Landroid/view/View$OnClickListener;

    .line 167
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$5;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->EnableListener:Landroid/view/View$OnClickListener;

    .line 185
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$6;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$6;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->TelephonyListener:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lcom/androguide/pimp/my/rom/Tweaks$7;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/Tweaks$7;-><init>(Lcom/androguide/pimp/my/rom/Tweaks;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MiscListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/Tweaks;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 221
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 223
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/Tweaks;->setHasOptionsMenu(Z)V

    .line 52
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 53
    const v0, 0x7f03003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    .line 55
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04006c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Network:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04006d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->NetworkSmall:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Network:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->NetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->NetworkSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->NetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04006f

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Multi:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040070

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MultiSmall:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Multi:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MultiListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MultiSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MultiListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040075

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Dalvik:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040076

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->DalvikSmall:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Dalvik:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->DalvikListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->DalvikSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->DalvikListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040072

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Kernel:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040073

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->KernelSmall:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Kernel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->KernelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->KernelSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->KernelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040155

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Enable:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040156

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->EnableSmall:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Enable:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->EnableListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->EnableSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->EnableListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04007b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Misc:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04007c

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MiscSmall:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Misc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MiscListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MiscSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->MiscListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040197

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Telephony:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040198

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->TelephonySmall:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->Telephony:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->TelephonyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->TelephonySmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/Tweaks;->TelephonyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/Tweaks;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 229
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 261
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 231
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/Tweaks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/Tweaks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/Tweaks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 246
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/Tweaks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/Tweaks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/Tweaks;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/Tweaks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
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
