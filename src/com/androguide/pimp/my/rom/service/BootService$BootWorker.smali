.class Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;
.super Landroid/os/AsyncTask;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/service/BootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BootWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field c:Landroid/content/Context;

.field final synthetic this$0:Lcom/androguide/pimp/my/rom/service/BootService;


# direct methods
.method public constructor <init>(Lcom/androguide/pimp/my/rom/service/BootService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "c"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->this$0:Lcom/androguide/pimp/my/rom/service/BootService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->c:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 24
    .parameter "args"

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->c:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 54
    .local v14, preferences:Landroid/content/SharedPreferences;
    new-instance v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v2}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    .line 57
    .local v2, cmd:Lcom/androguide/pimp/my/rom/util/CMDProcessor;
    const-string v18, "apply_voltages_at_boot"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 59
    invoke-static {v14}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl;->getVolts(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v17

    .line 60
    .local v17, volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v15, sb:Ljava/lang/StringBuilder;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 64
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 65
    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/devices/system/cpu/cpu0/cpufreq/UV_mV_table"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 64
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 66
    new-instance v18, Ljava/io/File;

    const-string v19, "/sys/devices/system/cpu/cpu1/cpufreq/UV_mV_table"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 67
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 69
    const-string v20, "/sys/devices/system/cpu/cpu1/cpufreq/UV_mV_table"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 67
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 71
    :cond_0
    new-instance v18, Ljava/io/File;

    const-string v19, "/sys/devices/system/cpu/cpu2/cpufreq/UV_mV_table"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 72
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 74
    const-string v20, "/sys/devices/system/cpu/cpu2/cpufreq/UV_mV_table"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 72
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 76
    :cond_1
    new-instance v18, Ljava/io/File;

    const-string v19, "/sys/devices/system/cpu/cpu3/cpufreq/UV_mV_table"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 77
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 79
    const-string v20, "/sys/devices/system/cpu/cpu3/cpufreq/UV_mV_table"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 77
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 84
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v17           #volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    :cond_2
    const-string v18, "cpu_boot"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 86
    const-string v18, "max_cpu"

    const/16 v19, 0x0

    .line 85
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, max:Ljava/lang/String;
    const-string v18, "min_cpu"

    const/16 v19, 0x0

    .line 87
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, min:Ljava/lang/String;
    const-string v18, "gov"

    const/16 v19, 0x0

    .line 89
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, gov:Ljava/lang/String;
    const-string v18, "io"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, io:Ljava/lang/String;
    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    if-eqz v7, :cond_4

    .line 93
    const/4 v12, 0x1

    .line 94
    .local v12, numOfCpu:I
    const-string v18, "/sys/devices/system/cpu/present"

    invoke-static/range {v18 .. v18}, Lcom/androguide/pimp/my/rom/util/Helpers;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, numOfCpus:Ljava/lang/String;
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, cpuCount:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 99
    const/16 v18, 0x0

    :try_start_0
    aget-object v18, v3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 100
    .local v5, cpuStart:I
    const/16 v18, 0x1

    aget-object v18, v3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 102
    .local v4, cpuEnd:I
    sub-int v18, v4, v5

    add-int/lit8 v12, v18, 0x1

    .line 104
    if-gez v12, :cond_3

    .line 105
    const/4 v12, 0x1

    .line 111
    .end local v4           #cpuEnd:I
    .end local v5           #cpuStart:I
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-lt v8, v12, :cond_6

    .line 127
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 128
    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/block/mmcblk0/queue/scheduler"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 127
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 130
    .end local v3           #cpuCount:[Ljava/lang/String;
    .end local v7           #gov:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #io:Ljava/lang/String;
    .end local v10           #max:Ljava/lang/String;
    .end local v11           #min:Ljava/lang/String;
    .end local v12           #numOfCpu:I
    .end local v13           #numOfCpus:Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    return-object v18

    .line 61
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    .restart local v17       #volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/androguide/pimp/my/rom/Voltage;

    .line 62
    .local v16, volt:Lcom/androguide/pimp/my/rom/Voltage;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/androguide/pimp/my/rom/Voltage;->getSavedMV()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 106
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v16           #volt:Lcom/androguide/pimp/my/rom/Voltage;
    .end local v17           #volts:Ljava/util/List;,"Ljava/util/List<Lcom/androguide/pimp/my/rom/Voltage;>;"
    .restart local v3       #cpuCount:[Ljava/lang/String;
    .restart local v7       #gov:Ljava/lang/String;
    .restart local v9       #io:Ljava/lang/String;
    .restart local v10       #max:Ljava/lang/String;
    .restart local v11       #min:Ljava/lang/String;
    .restart local v12       #numOfCpu:I
    .restart local v13       #numOfCpus:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 107
    .local v6, ex:Ljava/lang/NumberFormatException;
    const/4 v12, 0x1

    goto :goto_1

    .line 112
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .restart local v8       #i:I
    :cond_6
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 113
    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 114
    const-string v21, "cpu0"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "cpu"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 112
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 116
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 117
    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    .line 118
    const-string v21, "cpu0"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "cpu"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 116
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 120
    iget-object v0, v2, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "busybox echo "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 121
    const-string v20, " > "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 122
    const-string v21, "cpu0"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "cpu"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 120
    invoke-virtual/range {v18 .. v19}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/androguide/pimp/my/rom/service/BootService;->servicesStarted:Z

    .line 138
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->this$0:Lcom/androguide/pimp/my/rom/service/BootService;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/service/BootService;->stopSelf()V

    .line 139
    return-void
.end method
