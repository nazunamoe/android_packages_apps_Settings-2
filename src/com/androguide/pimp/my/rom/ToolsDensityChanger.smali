.class public Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ToolsDensityChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/ToolsDensityChanger$ClearMarketDataTask;
    }
.end annotation


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "SharedPrefsDensityChanger"

.field public static final PREF_STOCK:Ljava/lang/String; = "stock_density"


# instance fields
.field private AcceptListener:Landroid/view/View$OnClickListener;

.field private ApplyListener:Landroid/view/View$OnClickListener;

.field private ApplyNewListener:Landroid/view/View$OnClickListener;

.field public DPI:I

.field private DensityPrefs:Landroid/content/SharedPreferences;

.field private LCDListener:Landroid/view/View$OnClickListener;

.field private MarketListener:Landroid/view/View$OnClickListener;

.field private RebootListener:Landroid/view/View$OnClickListener;

.field public STOCK:I

.field final StockDensityChecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private StockListener:Landroid/view/View$OnClickListener;

.field dialog:Landroid/app/Dialog;

.field dialog2:Landroid/app/Dialog;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private ll:Landroid/widget/ScrollView;

.field mClearMarketData:Landroid/widget/TextView;

.field mClearMarketData2:Landroid/widget/TextView;

.field mClearMarketDataValue:Landroid/widget/TextView;

.field mCustomDensity:Landroid/widget/TextView;

.field mCustomDensity2:Landroid/widget/TextView;

.field mOpenMarket:Landroid/widget/TextView;

.field mOpenMarket2:Landroid/widget/TextView;

.field mReboot:Landroid/widget/TextView;

.field mReboot2:Landroid/widget/TextView;

.field mStockDensity:Landroid/widget/TextView;

.field mStockDensity2:Landroid/widget/TextView;

.field newDensityValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 55
    iput v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    .line 56
    iput v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DPI:I

    .line 137
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$1;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->StockListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->StockDensityChecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 203
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ApplyListener:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ApplyNewListener:Landroid/view/View$OnClickListener;

    .line 372
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$5;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$5;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->RebootListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$6;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$6;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->MarketListener:Landroid/view/View$OnClickListener;

    .line 404
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$7;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$7;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->AcceptListener:Landroid/view/View$OnClickListener;

    .line 426
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;

    invoke-direct {v0, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$8;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->LCDListener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ApplyNewListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 559
    const v0, 0x7f0c0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 561
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 79
    const v2, 0x7f030031

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    .line 81
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const-string v3, "SharedPrefsDensityChanger"

    invoke-virtual {v2, v3, v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;

    .line 83
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400b1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mStockDensity:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400b2

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mStockDensity2:Landroid/widget/TextView;

    .line 85
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mStockDensity:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->StockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mStockDensity2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->StockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400b4

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mReboot:Landroid/widget/TextView;

    .line 89
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400b5

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mReboot2:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mReboot:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->RebootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mReboot2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->RebootListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400c0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketDataValue:Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400b7

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketData:Landroid/widget/TextView;

    .line 95
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400b8

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketData2:Landroid/widget/TextView;

    .line 96
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketData:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->MarketListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketData2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->MarketListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400ba

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mOpenMarket:Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400bb

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mOpenMarket2:Landroid/widget/TextView;

    .line 101
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mOpenMarket:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->AcceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mOpenMarket2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->AcceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400bd

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mCustomDensity:Landroid/widget/TextView;

    .line 105
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    const v3, 0x7f0400be

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mCustomDensity2:Landroid/widget/TextView;

    .line 106
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mCustomDensity:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->LCDListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mCustomDensity2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->LCDListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    .line 113
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    const v3, 0x7f03001b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 114
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    const-string v3, "Revert density to stock value"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 118
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    const v3, 0x7f04005a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 119
    .local v1, stockdpi:Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->StockDensityChecker:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 121
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    const v3, 0x7f04005b

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    .local v0, apply:Landroid/widget/Button;
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ApplyListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    .line 126
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    const v3, 0x7f03001a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 127
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    const-string v3, "Set your new LCD density"

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 131
    iget-object v2, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->ll:Landroid/widget/ScrollView;

    return-object v2
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 568
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 600
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :goto_0
    return v6

    .line 570
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMenu;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v2, MainIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 575
    .end local v2           #MainIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTools;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    .local v4, ToolsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 580
    .end local v4           #ToolsIntent:Landroid/content/Intent;
    :pswitch_2
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainTweaks;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 581
    .local v5, TweaksIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    .end local v5           #TweaksIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainMods;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    .local v3, ModsIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 590
    .end local v3           #ModsIntent:Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainExtras;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 591
    .local v0, ExtrasIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 595
    .end local v0           #ExtrasIntent:Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/androguide/pimp/my/rom/ViewPagerMainHelp;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 596
    .local v1, HelpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 568
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
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 528
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 520
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 522
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->mClearMarketDataValue:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method
