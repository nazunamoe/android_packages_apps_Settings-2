.class public Lcom/androguide/pimp/my/rom/AppsMods;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "AppsMods.java"


# instance fields
.field private AdListener:Landroid/view/View$OnClickListener;

.field AdSmall:Landroid/widget/TextView;

.field Adblock:Landroid/widget/TextView;

.field Album:Landroid/widget/TextView;

.field private AlbumListener:Landroid/view/View$OnClickListener;

.field AlbumSmall:Landroid/widget/TextView;

.field BeatsBold:Landroid/widget/TextView;

.field private BeatsListener:Landroid/view/View$OnClickListener;

.field BeatsSmall:Landroid/widget/TextView;

.field BraviaBold:Landroid/widget/TextView;

.field private BraviaListener:Landroid/view/View$OnClickListener;

.field BraviaSmall:Landroid/widget/TextView;

.field private OpenvpnListener:Landroid/view/View$OnClickListener;

.field Touchwiz:Landroid/widget/TextView;

.field TouchwizSmall:Landroid/widget/TextView;

.field Vpn:Landroid/widget/TextView;

.field VpnSmall:Landroid/widget/TextView;

.field Xloud:Landroid/widget/TextView;

.field XloudSmall:Landroid/widget/TextView;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;

.field private xLoudListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsBold:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsSmall:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaBold:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaSmall:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Xloud:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->XloudSmall:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Adblock:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AdSmall:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Album:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AlbumSmall:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Touchwiz:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->TouchwizSmall:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Vpn:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->VpnSmall:Landroid/widget/TextView;

    .line 89
    new-instance v0, Lcom/androguide/pimp/my/rom/AppsMods$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/AppsMods$1;-><init>(Lcom/androguide/pimp/my/rom/AppsMods;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AdListener:Landroid/view/View$OnClickListener;

    .line 107
    new-instance v0, Lcom/androguide/pimp/my/rom/AppsMods$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/AppsMods$2;-><init>(Lcom/androguide/pimp/my/rom/AppsMods;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsListener:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/androguide/pimp/my/rom/AppsMods$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/AppsMods$3;-><init>(Lcom/androguide/pimp/my/rom/AppsMods;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/androguide/pimp/my/rom/AppsMods$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/AppsMods$4;-><init>(Lcom/androguide/pimp/my/rom/AppsMods;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->xLoudListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lcom/androguide/pimp/my/rom/AppsMods$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/AppsMods$5;-><init>(Lcom/androguide/pimp/my/rom/AppsMods;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AlbumListener:Landroid/view/View$OnClickListener;

    .line 177
    new-instance v0, Lcom/androguide/pimp/my/rom/AppsMods$6;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/AppsMods$6;-><init>(Lcom/androguide/pimp/my/rom/AppsMods;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->OpenvpnListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/AppsMods;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 194
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/AppsMods;->setHasOptionsMenu(Z)V

    .line 46
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 47
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    .line 50
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04003a

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Adblock:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04003b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AdSmall:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04003d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsBold:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04003e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsSmall:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040040

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaBold:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040041

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaSmall:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040043

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Xloud:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040044

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->XloudSmall:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040046

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Album:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040047

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AlbumSmall:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040049

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Vpn:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04004a

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->VpnSmall:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Adblock:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AdSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsBold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BeatsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaBold:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->BraviaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Xloud:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->xLoudListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->XloudSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->xLoudListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Album:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AlbumListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AlbumSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->AlbumListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->Vpn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->OpenvpnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->VpnSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods;->OpenvpnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppsMods;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 202
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 234
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 204
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 229
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
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
