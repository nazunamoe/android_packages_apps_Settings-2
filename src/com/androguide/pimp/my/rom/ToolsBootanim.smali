.class public Lcom/androguide/pimp/my/rom/ToolsBootanim;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsBootanim.java"


# instance fields
.field Apply:Landroid/widget/Button;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field private BlueListener:Landroid/view/View$OnClickListener;

.field private CountListener:Landroid/view/View$OnClickListener;

.field private DroidListener:Landroid/view/View$OnClickListener;

.field private NexusListener:Landroid/view/View$OnClickListener;

.field Restore:Landroid/widget/Button;

.field private RestoreListener:Landroid/view/View$OnClickListener;

.field Set:Landroid/widget/Button;

.field SetFirst:Landroid/widget/Button;

.field private SetFirstListener:Landroid/view/View$OnClickListener;

.field private SetListener:Landroid/view/View$OnClickListener;

.field blue:Landroid/widget/ImageView;

.field count:Landroid/widget/ImageView;

.field droid:Landroid/widget/ImageView;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;

.field nexus:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->nexus:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->droid:Landroid/widget/ImageView;

    .line 49
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->count:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->blue:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Apply:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Set:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetFirst:Landroid/widget/Button;

    .line 55
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Restore:Landroid/widget/Button;

    .line 143
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->NexusListener:Landroid/view/View$OnClickListener;

    .line 208
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->DroidListener:Landroid/view/View$OnClickListener;

    .line 274
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->BlueListener:Landroid/view/View$OnClickListener;

    .line 336
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->CountListener:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$5;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 450
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$6;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetListener:Landroid/view/View$OnClickListener;

    .line 631
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$7;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetFirstListener:Landroid/view/View$OnClickListener;

    .line 818
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsBootanim$8;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->RestoreListener:Landroid/view/View$OnClickListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsBootanim;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 982
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 984
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->setHasOptionsMenu(Z)V

    .line 64
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 65
    const v0, 0x7f03002f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    .line 68
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040083

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->nexus:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040084

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->droid:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040086

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->blue:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040085

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->count:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->nexus:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->NexusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->droid:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->DroidListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->blue:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->BlueListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->count:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->CountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Apply:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Apply:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f040094

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Set:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Set:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f04009d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetFirst:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetFirst:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->SetFirstListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    const v1, 0x7f0400a0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Restore:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->Restore:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->RestoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->ll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 990
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1022
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 992
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 993
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 997
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 998
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1002
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1003
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1007
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1008
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1012
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1013
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1017
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1018
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 990
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

.method public updateBlue()V
    .locals 4

    .prologue
    .line 227
    const v2, 0x7f0901cf

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 230
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 231
    const v2, 0x7f0901cb

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 232
    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 234
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 236
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsBootanim$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$11;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateCount()V
    .locals 4

    .prologue
    .line 290
    const v2, 0x7f0901ce

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 294
    const v2, 0x7f0901ca

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 295
    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 297
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 299
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsBootanim$12;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$12;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 331
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateDroid()V
    .locals 4

    .prologue
    .line 161
    const v2, 0x7f0901cd

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 165
    const v2, 0x7f0901c9

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 166
    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 168
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 170
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsBootanim$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$10;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateNexus()V
    .locals 4

    .prologue
    .line 96
    const v2, 0x7f0901cc

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsBootanim;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 99
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 100
    const v2, 0x7f0901c8

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsBootanim;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    const v2, 0x7f0901c7

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 103
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 107
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ToolsBootanim$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ToolsBootanim$9;-><init>(Lcom/androguide/pimp/my/rom/ToolsBootanim;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method
