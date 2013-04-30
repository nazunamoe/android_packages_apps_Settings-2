.class public Lcom/androguide/pimp/my/rom/HiddenMenu;
.super Landroid/app/ListActivity;
.source "HiddenMenu.java"


# instance fields
.field private intent:Landroid/content/Intent;

.field private phoneInfoComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HiddenMenu;->intent:Landroid/content/Intent;

    .line 11
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TestingSettings"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androguide/pimp/my/rom/HiddenMenu;->phoneInfoComponent:Landroid/content/ComponentName;

    .line 8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "paramBundle"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HiddenMenu;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/HiddenMenu;->phoneInfoComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 17
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/HiddenMenu;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/androguide/pimp/my/rom/HiddenMenu;->startActivity(Landroid/content/Intent;)V

    .line 18
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/HiddenMenu;->finish()V

    .line 19
    return-void
.end method
