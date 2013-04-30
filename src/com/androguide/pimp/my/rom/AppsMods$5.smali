.class Lcom/androguide/pimp/my/rom/AppsMods$5;
.super Ljava/lang/Object;
.source "AppsMods.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/AppsMods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/AppsMods;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/AppsMods;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/AppsMods$5;->this$0:Lcom/androguide/pimp/my/rom/AppsMods;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods$5;->this$0:Lcom/androguide/pimp/my/rom/AppsMods;

    #getter for: Lcom/androguide/pimp/my/rom/AppsMods;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/AppsMods;->access$0(Lcom/androguide/pimp/my/rom/AppsMods;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/androguide/pimp/my/rom/ViewPagerModsAlbum;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/AppsMods$5;->this$0:Lcom/androguide/pimp/my/rom/AppsMods;

    invoke-virtual {v1, v0}, Lcom/androguide/pimp/my/rom/AppsMods;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method
