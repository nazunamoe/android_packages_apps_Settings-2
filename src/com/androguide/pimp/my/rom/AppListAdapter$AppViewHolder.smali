.class public Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;
.super Ljava/lang/Object;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppViewHolder"
.end annotation


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/androguide/pimp/my/rom/AppListAdapter;


# direct methods
.method public constructor <init>(Lcom/androguide/pimp/my/rom/AppListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->this$0:Lcom/androguide/pimp/my/rom/AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "img"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/AppListAdapter$AppViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
