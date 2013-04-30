.class Lcom/androguide/pimp/my/rom/TweaksNetwork$11;
.super Ljava/lang/Object;
.source "TweaksNetwork.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksNetwork;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 388
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const/4 v2, 0x1

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute2:I

    .line 392
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$1(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 393
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Source-Route"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$6(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    :goto_0
    return-void

    .line 400
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksNetwork;->sourceroute2:I

    .line 402
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$1(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Source-Route"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
