.class Lcom/androguide/pimp/my/rom/TweaksDalvik$2;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 1335
    const v1, 0x7f040140

    if-ne p2, v1, :cond_1

    .line 1337
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const/4 v2, 0x1

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    .line 1339
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "o=a,"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->opti:Ljava/lang/String;

    .line 1341
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1342
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "minfree"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1369
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    const v1, 0x7f040141

    if-ne p2, v1, :cond_2

    .line 1348
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const/4 v2, 0x2

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    .line 1350
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "o=v,"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->opti:Ljava/lang/String;

    .line 1352
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1353
    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "minfree"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1354
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1356
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const v1, 0x7f040142

    if-ne p2, v1, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const/4 v2, 0x3

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    .line 1360
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    const-string v2, "o=n,"

    iput-object v2, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->opti:Ljava/lang/String;

    .line 1362
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksDalvik;->DalvikSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksDalvik;->access$0(Lcom/androguide/pimp/my/rom/TweaksDalvik;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1363
    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "minfree"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksDalvik;->MIN:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1364
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
