.class Lcom/androguide/pimp/my/rom/TweaksDalvik$1;
.super Ljava/lang/Object;
.source "TweaksDalvik.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksDalvik;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1292
    const v1, 0x7f04005d

    if-ne p2, v1, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const/4 v2, 0x1

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    .line 1296
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "v=a,"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->verif:Ljava/lang/String;

    .line 1298
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1299
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "oom"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1326
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    const v1, 0x7f04005f

    if-ne p2, v1, :cond_2

    .line 1305
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const/4 v2, 0x2

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    .line 1307
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "v=v,"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->verif:Ljava/lang/String;

    .line 1309
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1310
    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "oom"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1314
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const v1, 0x7f040060

    if-ne p2, v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const/4 v2, 0x3

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    .line 1318
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "v=n,"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->verif:Ljava/lang/String;

    .line 1320
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1321
    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "oom"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->OOM:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
