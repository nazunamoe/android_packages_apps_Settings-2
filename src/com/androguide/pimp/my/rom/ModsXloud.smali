.class public Lcom/androguide/pimp/my/rom/ModsXloud;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ModsXloud.java"


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefs"

.field public static final PREF_XLOUD:Ljava/lang/String; = "hw_acceleration"


# instance fields
.field Download:Landroid/widget/Button;

.field private UninstListener:Landroid/view/View$OnClickListener;

.field Uninstall:Landroid/widget/Button;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private hw:Landroid/widget/ToggleButton;

.field private ll:Landroid/widget/RelativeLayout;

.field private xLoudListener:Landroid/view/View$OnClickListener;

.field private xLoudPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->Download:Landroid/widget/Button;

    .line 56
    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->Uninstall:Landroid/widget/Button;

    .line 330
    new-instance v0, Lcom/androguide/pimp/my/rom/ModsXloud$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ModsXloud$1;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudListener:Landroid/view/View$OnClickListener;

    .line 342
    new-instance v0, Lcom/androguide/pimp/my/rom/ModsXloud$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ModsXloud$2;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->UninstListener:Landroid/view/View$OnClickListener;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ModsXloud;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/ModsXloud;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/ModsXloud;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 487
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 489
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ModsXloud;->setHasOptionsMenu(Z)V

    .line 66
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 67
    const v0, 0x7f03002b

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->ll:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->ll:Landroid/widget/RelativeLayout;

    const v1, 0x7f040066

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;

    .line 71
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->ll:Landroid/widget/RelativeLayout;

    const v1, 0x7f04005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->Download:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->Download:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->ll:Landroid/widget/RelativeLayout;

    const v1, 0x7f040094

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->Uninstall:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->Uninstall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->UninstListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v1, "SharedPrefs"

    invoke-virtual {v0, v1, v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;

    .line 77
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/androguide/pimp/my/rom/ModsXloud$3;

    invoke-direct {v1, p0}, Lcom/androguide/pimp/my/rom/ModsXloud$3;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 243
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->ll:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 495
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 527
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 497
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsXloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 502
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ModsXloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 507
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ModsXloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 512
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 513
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ModsXloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 517
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ModsXloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 522
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 523
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ModsXloud;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 495
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
    .line 472
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 473
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 475
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->hw:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->xLoudPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hw_acceleration"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 481
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 482
    return-void
.end method

.method public updateData()V
    .locals 4

    .prologue
    .line 251
    const v2, 0x7f090146

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsXloud;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, file_url:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ModsXloud;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 254
    .local v1, myProgress:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 255
    const v2, 0x7f090148

    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ModsXloud;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 256
    const v2, 0x7f090145

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 258
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 264
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/androguide/pimp/my/rom/ModsXloud$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/androguide/pimp/my/rom/ModsXloud$4;-><init>(Lcom/androguide/pimp/my/rom/ModsXloud;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 325
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 327
    return-void
.end method
