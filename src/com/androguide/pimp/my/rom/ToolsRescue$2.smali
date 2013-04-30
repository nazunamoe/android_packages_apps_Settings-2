.class Lcom/androguide/pimp/my/rom/ToolsRescue$2;
.super Ljava/lang/Object;
.source "ToolsRescue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsRescue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsRescue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)Lcom/androguide/pimp/my/rom/ToolsRescue;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 171
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 174
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 177
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0xfd

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 178
    const-string v16, "busybox mount -o remount,rw /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 181
    const-string v16, "rm -f /system/etc/init.d/99Pimp_my_Rom"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 183
    const-string v16, "rm -f /system/etc/init.d/S90zipalign"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 185
    const-string v16, "rm -f /system/etc/init.d/00testinitd"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 187
    const-string v16, "rm -f /system/etc/init.d/08setperm"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 189
    const-string v16, "sed -i \'/Wifi connect speed/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 190
    const-string v16, "sed -i \'/ro.mot.eri.losalert.delay=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 191
    const-string v16, "sed -i \'/Video Streaming Tweak/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 192
    const-string v16, "sed -i \'/media.stagefright.enable-/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 193
    const-string v16, "sed -i \'/3G Signal & Speed Tweaks/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 194
    const-string v16, "sed -i \'/ro.ril./d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 195
    const-string v16, "sed -i \'/Enable HSUPA Network Mode/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 196
    const-string v16, "sed -i \'/ro.ril.hsxpa=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 197
    const-string v16, "sed -i \'/Faster DNS Resolution/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 198
    const-string v16, "sed -i \'/net.dns1=8.8.8.8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 199
    const-string v16, "sed -i \'/net.dns2=8.8.4.4/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 200
    const-string v16, "sed -i \'/Interface Tweaks/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 201
    const-string v16, "sed -i \'/net.ppp0.dns1=8.8.8.8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 202
    const-string v16, "sed -i \'/net.ppp0.dns2=8.8.4.4/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 203
    const-string v16, "sed -i \'/### Pimp my Rom : Mid OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 204
    const-string v16, "sed -i \'/### Pimp my Rom : High OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    .line 205
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x16

    .line 206
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x17

    .line 207
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x18

    .line 208
    const-string v16, "sed -i \'/ro.VISIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x19

    .line 209
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1a

    .line 210
    const-string v16, "sed -i \'/ro.BACKUP_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    .line 211
    const-string v16, "sed -i \'/ro.HOME_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1c

    .line 212
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1d

    .line 213
    const-string v16, "sed -i \'/ro.EMPTY_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1e

    .line 214
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x1f

    .line 215
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x20

    .line 216
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x21

    .line 217
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x22

    .line 218
    const-string v16, "sed -i \'/ro.VISIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x23

    .line 219
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x24

    .line 220
    const-string v16, "sed -i \'/ro.BACKUP_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x25

    .line 221
    const-string v16, "sed -i \'/ro.HOME_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x26

    .line 222
    const-string v16, "sed -i \'/ro.EMPTY_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x27

    .line 223
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MIN_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x28

    .line 224
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x29

    .line 225
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2a

    .line 226
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2b

    .line 227
    const-string v16, "sed -i \'/FAM1=2048/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2c

    .line 228
    const-string v16, "sed -i \'/VAM1=3584/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2d

    .line 229
    const-string v16, "sed -i \'/SAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2e

    .line 230
    const-string v16, "sed -i \'/BAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x2f

    .line 231
    const-string v16, "sed -i \'/HAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x30

    .line 232
    const-string v16, "sed -i \'/HIAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x31

    .line 233
    const-string v16, "sed -i \'/EAM1=32000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x32

    .line 234
    const-string v16, "sed -i \'/PAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x33

    .line 235
    const-string v16, "sed -i \'/HWAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x34

    .line 236
    const-string v16, "sed -i \'/CPM1=24320/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x35

    .line 237
    const-string v16, "sed -i \'/FAJ1=8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x36

    .line 238
    const-string v16, "sed -i \'/VAJ1=14/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x37

    .line 239
    const-string v16, "sed -i \'/SAJ1=75/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x38

    .line 240
    const-string v16, "sed -i \'/BAJ1=76/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x39

    .line 241
    const-string v16, "sed -i \'/HAJ1=9/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3a

    .line 242
    const-string v16, "sed -i \'/HAMJ1=89/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3b

    .line 243
    const-string v16, "sed -i \'/EAJ1=125/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3c

    .line 244
    const-string v16, "sed -i \'/PAJ1=10/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3d

    .line 245
    const-string v16, "sed -i \'/HWAJ1=15/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3e

    .line 246
    const-string v16, "sed -i \'/CPJ1=90/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x3f

    .line 247
    const-string v16, "sed -i \'/ENFORCE_PROCESS_LIMIT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x40

    .line 248
    const-string v16, "sed -i \'/MAX_SERVICE_INACTIVITY=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x41

    .line 249
    const-string v16, "sed -i \'/MIN_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x42

    .line 250
    const-string v16, "sed -i \'/MAX_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x43

    .line 251
    const-string v16, "sed -i \'/CONTENT_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x44

    .line 252
    const-string v16, "sed -i \'/EMPTY_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x45

    .line 253
    const-string v16, "sed -i \'/MAX_ACTIVITIES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x46

    .line 254
    const-string v16, "sed -i \'/ACTIVITY_INACTIVE_RESET_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x47

    .line 255
    const-string v16, "sed -i \'/MAX_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x48

    .line 256
    const-string v16, "sed -i \'/MIN_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x49

    .line 257
    const-string v16, "sed -i \'/APP_SWITCH_DELAY_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4a

    .line 258
    const-string v16, "sed -i \'/MAX_PROCESSES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4b

    .line 259
    const-string v16, "sed -i \'/PROC_START_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4c

    .line 260
    const-string v16, "sed -i \'/CPU_MIN_CHECK_DURATION=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4d

    .line 261
    const-string v16, "sed -i \'/GC_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4e

    .line 262
    const-string v16, "sed -i \'/SERVICE_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x4f

    .line 263
    const-string v16, "sed -i \'/MIN_CRASH_INTERVAL=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x50

    .line 264
    const-string v16, "sed -i \'/### Pimp my Rom : Mid OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x51

    .line 265
    const-string v16, "sed -i \'/### Pimp my Rom : High OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x52

    .line 266
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x53

    .line 267
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x54

    .line 268
    const-string v16, "sed -i \'/ro.VISIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x55

    .line 269
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x56

    .line 270
    const-string v16, "sed -i \'/ro.BACKUP_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x57

    .line 271
    const-string v16, "sed -i \'/ro.HOME_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x58

    .line 272
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x59

    .line 273
    const-string v16, "sed -i \'/ro.EMPTY_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5a

    .line 274
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5b

    .line 275
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5c

    .line 276
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5d

    .line 277
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5e

    .line 278
    const-string v16, "sed -i \'/ro.VISIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x5f

    .line 279
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x60

    .line 280
    const-string v16, "sed -i \'/ro.BACKUP_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x61

    .line 281
    const-string v16, "sed -i \'/ro.HOME_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x62

    .line 282
    const-string v16, "sed -i \'/ro.EMPTY_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x63

    .line 283
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MIN_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x64

    .line 284
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x65

    .line 285
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x66

    .line 286
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x67

    .line 287
    const-string v16, "sed -i \'/FAM1=2048/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x68

    .line 288
    const-string v16, "sed -i \'/VAM1=3584/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x69

    .line 289
    const-string v16, "sed -i \'/SAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x6a

    .line 290
    const-string v16, "sed -i \'/BAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x6b

    .line 291
    const-string v16, "sed -i \'/HAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x6c

    .line 292
    const-string v16, "sed -i \'/HIAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x6d

    .line 293
    const-string v16, "sed -i \'/EAM1=32000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x6e

    .line 294
    const-string v16, "sed -i \'/PAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x6f

    .line 295
    const-string v16, "sed -i \'/HWAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x70

    .line 296
    const-string v16, "sed -i \'/CPM1=24320/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x71

    .line 297
    const-string v16, "sed -i \'/FAJ1=8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x72

    .line 298
    const-string v16, "sed -i \'/VAJ1=14/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x73

    .line 299
    const-string v16, "sed -i \'/SAJ1=75/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x74

    .line 300
    const-string v16, "sed -i \'/BAJ1=76/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x75

    .line 301
    const-string v16, "sed -i \'/HAJ1=9/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x76

    .line 302
    const-string v16, "sed -i \'/HAMJ1=89/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x77

    .line 303
    const-string v16, "sed -i \'/EAJ1=125/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x78

    .line 304
    const-string v16, "sed -i \'/PAJ1=10/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x79

    .line 305
    const-string v16, "sed -i \'/HWAJ1=15/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x7a

    .line 306
    const-string v16, "sed -i \'/CPJ1=90/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x7b

    .line 307
    const-string v16, "sed -i \'/ENFORCE_PROCESS_LIMIT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x7c

    .line 308
    const-string v16, "sed -i \'/MAX_SERVICE_INACTIVITY=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x7d

    .line 309
    const-string v16, "sed -i \'/MIN_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x7e

    .line 310
    const-string v16, "sed -i \'/MAX_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x7f

    .line 311
    const-string v16, "sed -i \'/CONTENT_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x80

    .line 312
    const-string v16, "sed -i \'/EMPTY_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x81

    .line 313
    const-string v16, "sed -i \'/MAX_ACTIVITIES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x82

    .line 314
    const-string v16, "sed -i \'/ACTIVITY_INACTIVE_RESET_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x83

    .line 315
    const-string v16, "sed -i \'/MAX_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x84

    .line 316
    const-string v16, "sed -i \'/MIN_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x85

    .line 317
    const-string v16, "sed -i \'/APP_SWITCH_DELAY_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x86

    .line 318
    const-string v16, "sed -i \'/MAX_PROCESSES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x87

    .line 319
    const-string v16, "sed -i \'/PROC_START_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x88

    .line 320
    const-string v16, "sed -i \'/CPU_MIN_CHECK_DURATION=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x89

    .line 321
    const-string v16, "sed -i \'/GC_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8a

    .line 322
    const-string v16, "sed -i \'/SERVICE_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8b

    .line 323
    const-string v16, "sed -i \'/MIN_CRASH_INTERVAL=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8c

    .line 324
    const-string v16, "sed -i \'/### Pimp my Rom : Mid OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8d

    .line 325
    const-string v16, "sed -i \'/### Pimp my Rom : High OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8e

    .line 326
    const-string v16, "sed -i \'/### Pimp my Rom : Low OOM Groupings/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x8f

    .line 327
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x90

    .line 328
    const-string v16, "sed -i \'/ro.VISIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x91

    .line 329
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x92

    .line 330
    const-string v16, "sed -i \'/ro.BACKUP_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x93

    .line 331
    const-string v16, "sed -i \'/ro.HOME_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x94

    .line 332
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x95

    .line 333
    const-string v16, "sed -i \'/ro.EMPTY_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x96

    .line 334
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x97

    .line 335
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x98

    .line 336
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_MEM/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x99

    .line 337
    const-string v16, "sed -i \'/ro.FOREGROUND_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9a

    .line 338
    const-string v16, "sed -i \'/ro.VISIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9b

    .line 339
    const-string v16, "sed -i \'/ro.SECONDARY_SERVER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9c

    .line 340
    const-string v16, "sed -i \'/ro.BACKUP_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9d

    .line 341
    const-string v16, "sed -i \'/ro.HOME_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9e

    .line 342
    const-string v16, "sed -i \'/ro.EMPTY_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0x9f

    .line 343
    const-string v16, "sed -i \'/ro.HIDDEN_APP_MIN_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa0

    .line 344
    const-string v16, "sed -i \'/ro.PERCEPTIBLE_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa1

    .line 345
    const-string v16, "sed -i \'/ro.HEAVY_WEIGHT_APP_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa2

    .line 346
    const-string v16, "sed -i \'/ro.CONTENT_PROVIDER_ADJ/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa3

    .line 347
    const-string v16, "sed -i \'/FAM1=2048/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa4

    .line 348
    const-string v16, "sed -i \'/VAM1=3584/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa5

    .line 349
    const-string v16, "sed -i \'/SAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa6

    .line 350
    const-string v16, "sed -i \'/BAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa7

    .line 351
    const-string v16, "sed -i \'/HAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa8

    .line 352
    const-string v16, "sed -i \'/HIAM1=23040/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xa9

    .line 353
    const-string v16, "sed -i \'/EAM1=32000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xaa

    .line 354
    const-string v16, "sed -i \'/PAM1=1024/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xab

    .line 355
    const-string v16, "sed -i \'/HWAM1=19200/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xac

    .line 356
    const-string v16, "sed -i \'/CPM1=24320/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xad

    .line 357
    const-string v16, "sed -i \'/FAJ1=8/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xae

    .line 358
    const-string v16, "sed -i \'/VAJ1=14/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xaf

    .line 359
    const-string v16, "sed -i \'/SAJ1=75/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb0

    .line 360
    const-string v16, "sed -i \'/BAJ1=76/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb1

    .line 361
    const-string v16, "sed -i \'/HAJ1=9/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb2

    .line 362
    const-string v16, "sed -i \'/HAMJ1=89/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb3

    .line 363
    const-string v16, "sed -i \'/EAJ1=125/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb4

    .line 364
    const-string v16, "sed -i \'/PAJ1=10/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb5

    .line 365
    const-string v16, "sed -i \'/HWAJ1=15/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb6

    .line 366
    const-string v16, "sed -i \'/CPJ1=90/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb7

    .line 367
    const-string v16, "sed -i \'/ENFORCE_PROCESS_LIMIT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb8

    .line 368
    const-string v16, "sed -i \'/MAX_SERVICE_INACTIVITY=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xb9

    .line 369
    const-string v16, "sed -i \'/MIN_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xba

    .line 370
    const-string v16, "sed -i \'/MAX_HIDDEN_APPS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xbb

    .line 371
    const-string v16, "sed -i \'/CONTENT_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xbc

    .line 372
    const-string v16, "sed -i \'/EMPTY_APP_IDLE_OFFSET=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xbd

    .line 373
    const-string v16, "sed -i \'/MAX_ACTIVITIES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xbe

    .line 374
    const-string v16, "sed -i \'/ACTIVITY_INACTIVE_RESET_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xbf

    .line 375
    const-string v16, "sed -i \'/MAX_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc0

    .line 376
    const-string v16, "sed -i \'/MIN_RECENT_TASKS=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc1

    .line 377
    const-string v16, "sed -i \'/APP_SWITCH_DELAY_TIME=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc2

    .line 378
    const-string v16, "sed -i \'/MAX_PROCESSES=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc3

    .line 379
    const-string v16, "sed -i \'/PROC_START_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc4

    .line 380
    const-string v16, "sed -i \'/CPU_MIN_CHECK_DURATION=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc5

    .line 381
    const-string v16, "sed -i \'/GC_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc6

    .line 382
    const-string v16, "sed -i \'/SERVICE_TIMEOUT=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc7

    .line 383
    const-string v16, "sed -i \'/MIN_CRASH_INTERVAL=false/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc8

    .line 384
    const-string v16, "sed -i \'/Pimp my Rom : Beats Audio props/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xc9

    .line 385
    const-string v16, "sed -i \'/htc.audio.swalt/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xca

    .line 386
    const-string v16, "sed -i \'/htc.audio.alc/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xcb

    .line 387
    const-string v16, "sed -i \'/af.resampler.quality=255/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xcc

    .line 388
    const-string v16, "sed -i \'/af.resample=42000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xcd

    .line 389
    const-string v16, "sed -i \'/Increase photo and video recording quality/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xce

    .line 390
    const-string v16, "sed -i \'/ro.media.dec.jpeg.memcap=8000000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xcf

    .line 391
    const-string v16, "sed -i \'/ro.media.enc.hprof.vid.bps=8000000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd0

    .line 392
    const-string v16, "sed -i \'/Increase jpg quality to 100/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd1

    .line 393
    const-string v16, "sed -i \'/ro.media.enc.jpeg.quality=100/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd2

    .line 394
    const-string v16, "sed -i \'/Increase jpg quality to 100/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd3

    .line 395
    const-string v16, "sed -i \'/ro.media.enc.jpeg.quality=100/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd4

    .line 396
    const-string v16, "sed -i \'/Better Flashlight intensity/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd5

    .line 397
    const-string v16, "sed -i \'/ro.media.capture.flash/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd6

    .line 398
    const-string v16, "sed -i \'/ro.media.capture.torch/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd7

    .line 399
    const-string v16, "sed -i \'/Reduce the black screen time of the proximity sensor/d\\\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd8

    .line 400
    const-string v16, "sed -i \'/ro.lge.proximity.delay=25/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xd9

    .line 401
    const-string v16, "sed -i \'/mot.proximity.delay=25/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xda

    .line 402
    const-string v16, "sed -i \'/Enable Quick Power-On mode to reduce boot-time/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xdb

    .line 403
    const-string v16, "sed -i \'/ro.config.hw_quickpoweron=true/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xdc

    .line 404
    const-string v16, "sed -i \'/Hardware Acceleration Disabled/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xdd

    .line 405
    const-string v16, "sed -i \'/video.accelerate.hw=0/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xde

    .line 406
    const-string v16, "sed -i \'/Hardware Acceleration Enabled/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xdf

    .line 407
    const-string v16, "sed -i \'/video.accelerate.hw=1/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe0

    .line 408
    const-string v16, "sed -i \'/Disable GPU Rendering on 2d Operations/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe1

    .line 409
    const-string v16, "sed -i \'/Force GPU Rendering on 2d Operations/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe2

    .line 410
    const-string v16, "sed -i \'/debug.sf.hw=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe3

    .line 411
    const-string v16, "sed -i \'/debug.egl.profiler=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe4

    .line 412
    const-string v16, "sed -i \'/debug.egl.hw=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe5

    .line 413
    const-string v16, "sed -i \'/debug.composition.type=/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe6

    .line 414
    const-string v16, "sed -i \'/Enable Surface Dithering/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe7

    .line 415
    const-string v16, "sed -i \'/persist.sys.use_dithering=1/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe8

    .line 416
    const-string v16, "sed -i \'/Disable Surface Dithering/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xe9

    .line 417
    const-string v16, "sed -i \'/persist.sys.use_dithering=0/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xea

    .line 418
    const-string v16, "sed -i \'/Enable 16bit Transparency/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xeb

    .line 419
    const-string v16, "sed -i \'/Disable 16bit Transparency/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xec

    .line 420
    const-string v16, "sed -i \'/persist.sys.use_16bpp_alpha=1/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xed

    .line 421
    const-string v16, "sed -i \'/persist.sys.use_16bpp_alpha=0/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xee

    .line 422
    const-string v16, "sed -i \'/Enable 16bit Transparency/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xef

    .line 423
    const-string v16, "sed -i \'/Disable 16bit Transparency/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf0

    .line 424
    const-string v16, "sed -i \'/persist.sys.use_16bpp_alpha=1/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf1

    .line 425
    const-string v16, "sed -i \'/persist.sys.use_16bpp_alpha=0/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf2

    .line 426
    const-string v16, "sed -i \'/Enable Kernel Error Checking/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf3

    .line 427
    const-string v16, "sed -i \'/Disable Kernel Error Checking/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf4

    .line 428
    const-string v16, "sed -i \'/ro.kernel.android.checkjni/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf5

    .line 429
    const-string v16, "sed -i \'/ro.kernel.checkjni/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf6

    .line 430
    const-string v16, "sed -i \'/Allow Dalvik to use JIT Compiler/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf7

    .line 431
    const-string v16, "sed -i \'/dalvik.vm.execution-mode=int:jit/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf8

    .line 433
    const-string v16, "sed -i \'/^$/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/16 v15, 0xf9

    .line 435
    const-string v16, "rm -f /system/etc/hosts"

    aput-object v16, v14, v15

    const/16 v15, 0xfa

    .line 436
    const-string v16, "echo \"127.0.0.1      localhost\" >> /system/etc/hosts"

    aput-object v16, v14, v15

    const/16 v15, 0xfb

    .line 437
    const-string v16, "chmod 644 /system/etc/hosts"

    aput-object v16, v14, v15

    const/16 v15, 0xfc

    .line 439
    const-string v16, "busybox mount -o remount,ro /system"

    .line 177
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 445
    .local v3, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v13, 0x1

    :try_start_0
    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v13

    invoke-virtual {v13}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 486
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 489
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 490
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 491
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/ToolsRescue$2$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 500
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/ToolsRescue$2$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/ToolsRescue$2$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsRescue$2;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 503
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 509
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 510
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 511
    const-string v13, "Fully Un-Pimpin\'..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 514
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 515
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Removing all the modifications made by Pimp my Rom..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 519
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 521
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 522
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/ToolsRescue$2$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/ToolsRescue$2$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsRescue$2;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 527
    const-wide/16 v14, 0xfa0

    .line 522
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 534
    return-void

    .line 446
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 448
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 449
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 451
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 452
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 454
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 461
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 462
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 463
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 464
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 465
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 473
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 474
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 475
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 476
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 477
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 479
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ToolsRescue$2;->this$0:Lcom/androguide/pimp/my/rom/ToolsRescue;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsRescue;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ToolsRescue;->access$0(Lcom/androguide/pimp/my/rom/ToolsRescue;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
