.class Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;
.super Ljava/lang/Object;
.source "TweaksMultitasking.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksMultitasking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 272
    const v1, 0x7f04005d

    if-ne p2, v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const/4 v2, 0x1

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    .line 276
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$1(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "zram"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const v1, 0x7f04005f

    if-ne p2, v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const/4 v2, 0x2

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    .line 284
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$1(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "zram"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 288
    .end local v0           #prefs:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const v1, 0x7f0401ca

    if-ne p2, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    const/4 v2, 0x3

    iput v2, v1, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    .line 292
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksMultitasking;->MuPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->access$1(Lcom/androguide/pimp/my/rom/TweaksMultitasking;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .restart local v0       #prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "zram"

    iget-object v2, p0, Lcom/androguide/pimp/my/rom/TweaksMultitasking$4;->this$0:Lcom/androguide/pimp/my/rom/TweaksMultitasking;

    iget v2, v2, Lcom/androguide/pimp/my/rom/TweaksMultitasking;->ZRAM:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
