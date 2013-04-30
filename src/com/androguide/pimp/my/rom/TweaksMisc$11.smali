.class Lcom/androguide/pimp/my/rom/TweaksMisc$11;
.super Ljava/lang/Object;
.source "TweaksMisc.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksMisc;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    .line 365
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

    .line 372
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    const/4 v2, 0x1

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksMisc;->flash:I

    .line 376
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$1(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "flash"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->led:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$10(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    :goto_0
    return-void

    .line 382
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksMisc;->flash:I

    .line 384
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMisc$11;->this$0:Lcom/androguide/pimp/my/rom/TweaksMisc;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMisc;->xPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksMisc;->access$1(Lcom/androguide/pimp/my/rom/TweaksMisc;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 385
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "flash"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
