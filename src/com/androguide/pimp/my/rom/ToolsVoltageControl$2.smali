.class Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;
.super Ljava/lang/Object;
.source "ToolsVoltageControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 106
    new-instance v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v3, v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox echo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 108
    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 109
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu1/cpufreq/UV_mV_table"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    new-instance v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v3, v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox echo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 112
    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpu1/cpufreq/UV_mV_table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 114
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu2/cpufreq/UV_mV_table"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    new-instance v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v3, v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox echo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 117
    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpu2/cpufreq/UV_mV_table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 119
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/cpu3/cpufreq/UV_mV_table"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    new-instance v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v3}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v3, v3, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "busybox echo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 122
    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sys/devices/system/cpu/cpu3/cpufreq/UV_mV_table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 124
    :cond_2
    invoke-static {}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$1()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 126
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mVoltages:Ljava/util/List;
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$0(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v3, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsVoltageControl;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->mAdapter:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;
    invoke-static {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->access$2(Lcom/androguide/pimp/my/rom/ToolsVoltageControl;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$ListAdapter;->notifyDataSetChanged()V

    .line 128
    return-void

    .line 103
    .end local v2           #volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androguide/pimp/my/rom/Voltage;

    .line 104
    .local v1, volt:Lcom/androguide/pimp/my/rom/Voltage;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/androguide/pimp/my/rom/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
