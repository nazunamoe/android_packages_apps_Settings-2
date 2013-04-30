.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;
.super Ljava/lang/Object;
.source "ToolsDensityChanger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 209
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v4, v4, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    const/16 v5, 0xa0

    if-ne v4, v5, :cond_0

    .line 211
    const-string v4, "rw"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 212
    new-instance v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v4, v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "busybox sed -i \'s|ro.sf.lcd_density=.*|ro.sf.lcd_density="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v6, v6, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-virtual {v4, v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 214
    const-string v4, "ro"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 257
    :goto_0
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v4, v4, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->cancel()V

    .line 258
    return-void

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v4, v4, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    const/16 v5, 0xd5

    if-ne v4, v5, :cond_1

    .line 221
    const-string v4, "rw"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 222
    new-instance v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v4, v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "busybox sed -i \'s|ro.sf.lcd_density=.*|ro.sf.lcd_density="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v6, v6, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-virtual {v4, v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 224
    const-string v4, "ro"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    goto :goto_0

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v4, v4, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_2

    .line 231
    const-string v4, "rw"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 232
    new-instance v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v4, v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "busybox sed -i \'s|ro.sf.lcd_density=.*|ro.sf.lcd_density="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v6, v6, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    invoke-virtual {v4, v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 234
    const-string v4, "ro"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    goto :goto_0

    .line 238
    :cond_2
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v4, v4, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    const/16 v5, 0x140

    if-ne v4, v5, :cond_3

    .line 241
    const-string v4, "rw"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 242
    new-instance v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v4, v4, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "busybox sed -i \'s|ro.sf.lcd_density=.*|ro.sf.lcd_density="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    iget-object v6, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v6, v6, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->STOCK:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/build.prop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-virtual {v4, v5}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 244
    const-string v4, "ro"

    invoke-static {v4}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 249
    :cond_3
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$3;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v4}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, context:Landroid/content/Context;
    const-string v3, "Please select your stock density !"

    .line 251
    .local v3, txt:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 252
    .local v1, duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 253
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
