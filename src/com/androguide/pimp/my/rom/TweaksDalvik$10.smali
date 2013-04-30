.class Lcom/androguide/pimp/my/rom/TweaksDalvik$10;
.super Ljava/lang/Object;
.source "TweaksDalvik.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksDalvik;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 674
    if-eqz p2, :cond_0

    .line 677
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "m=y"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->map:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 680
    .local v0, enable:Landroid/content/SharedPreferences$Editor;
    const-string v1, "RegisterMap"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->reg:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$2(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 696
    :goto_0
    return-void

    .line 686
    .end local v0           #enable:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "m=n"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->map:Ljava/lang/String;

    .line 688
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$10;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 689
    .restart local v0       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v1, "RegisterMap"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 690
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
