.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;
.super Ljava/lang/Object;
.source "ToolsDensityChanger.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/16 v5, 0x140

    const/16 v4, 0xf0

    const/16 v3, 0xd5

    const/16 v2, 0xa0

    .line 155
    const v1, 0x7f04005d

    if-ne p2, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iput v2, v1, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    .line 160
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "stock_density"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const v1, 0x7f04005e

    if-ne p2, v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iput v3, v1, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    .line 170
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "stock_density"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 175
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const v1, 0x7f04005f

    if-ne p2, v1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iput v4, v1, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    .line 180
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "stock_density"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 185
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const v1, 0x7f040060

    if-ne p2, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iput v5, v1, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    .line 190
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "stock_density"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
