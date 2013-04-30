.class Lcom/androguide/pimp/my/rom/TweaksNetwork$12;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 416
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

    .line 424
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    const/4 v2, 0x1

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns2:I

    .line 428
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$1(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 429
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DNS"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$7(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    :goto_0
    return-void

    .line 434
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksNetwork;->dns2:I

    .line 436
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$12;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$1(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DNS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
