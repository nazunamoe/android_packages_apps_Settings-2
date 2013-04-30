.class Lcom/androguide/pimp/my/rom/ToolsInitd$1;
.super Ljava/lang/Object;
.source "ToolsInitd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsInitd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsInitd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsInitd$1;)Lcom/androguide/pimp/my/rom/ToolsInitd;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 86
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 89
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 93
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v11, "Reboot Now ?"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    const-string v11, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 97
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 98
    const-string v12, "Yes, Reboot !"

    new-instance v13, Lcom/androguide/pimp/my/rom/ToolsInitd$1$1;

    invoke-direct {v13, p0}, Lcom/androguide/pimp/my/rom/ToolsInitd$1$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 107
    const-string v12, "No, keep Pimpin\' !"

    new-instance v13, Lcom/androguide/pimp/my/rom/ToolsInitd$1$2;

    invoke-direct {v13, p0}, Lcom/androguide/pimp/my/rom/ToolsInitd$1$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 114
    new-instance v4, Landroid/app/Dialog;

    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 115
    .local v4, dialog:Landroid/app/Dialog;
    const v11, 0x7f030017

    invoke-virtual {v4, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 116
    const-string v11, "Please Wait..."

    invoke-virtual {v4, v11}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    const v11, 0x7f040033

    invoke-virtual {v4, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 120
    .local v8, text:Landroid/widget/TextView;
    const-string v11, "Installing Init.d Support..."

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 126
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    .line 127
    .local v7, t:Ljava/util/Timer;
    new-instance v11, Lcom/androguide/pimp/my/rom/ToolsInitd$1$3;

    invoke-direct {v11, p0, v4, v7}, Lcom/androguide/pimp/my/rom/ToolsInitd$1$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 132
    const-wide/16 v12, 0x1b58

    .line 127
    invoke-virtual {v7, v11, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 135
    new-instance v2, Lcom/androguide/pimp/my/rom/ToolsInitd$1$4;

    const/4 v11, 0x0

    const/16 v12, 0x77

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    .line 136
    const-string v14, "busybox mount -o remount,rw -t auto /system"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 137
    const-string v14, "if [ -e /system/etc/install-recovery.sh ]"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 138
    const-string v14, "then"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    .line 139
    const-string v14, "echo \"# init.d support\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    .line 140
    const-string v14, "echo \"run-parts /system/etc/init.d/\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/4 v13, 0x5

    .line 141
    const-string v14, "echo \"\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/4 v13, 0x6

    .line 142
    const-string v14, "awk \'!x[$0]++\' /system/etc/install-recovery.sh > /sdcard/install-recovery.sh"

    aput-object v14, v12, v13

    const/4 v13, 0x7

    .line 143
    const-string v14, "cat /sdcard/install-recovery.sh > /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0x8

    .line 144
    const-string v14, "echo \"\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0x9

    .line 145
    const-string v14, "rm /sdcard/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0xa

    .line 146
    const-string v14, "else"

    aput-object v14, v12, v13

    const/16 v13, 0xb

    .line 147
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0xc

    .line 148
    const-string v14, "echo \"# init.d support\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0xd

    .line 149
    const-string v14, "echo \"run-parts /system/etc/init.d/\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0xe

    .line 150
    const-string v14, "echo \"\" >> /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0xf

    .line 151
    const-string v14, "fi"

    aput-object v14, v12, v13

    const/16 v13, 0x10

    .line 152
    const-string v14, "chmod 755 /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0x11

    .line 153
    const-string v14, "chown 0.0 /system/etc/install-recovery.sh"

    aput-object v14, v12, v13

    const/16 v13, 0x12

    .line 155
    const-string v14, "if [ -e /system/etc/init.d ]"

    aput-object v14, v12, v13

    const/16 v13, 0x13

    .line 156
    const-string v14, "then"

    aput-object v14, v12, v13

    const/16 v13, 0x14

    .line 157
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x15

    .line 158
    const-string v14, "echo \"#Script to set correct permissions to /system/etc/init.d folder by Ryuinferno @ XDA 2012\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x16

    .line 159
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x17

    .line 160
    const-string v14, "echo \"busybox chmod -R 777 /system/etc/init.d;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x18

    .line 161
    const-string v14, "echo \"\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x19

    .line 162
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x1a

    .line 163
    const-string v14, "echo \"#Init.d Test\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x1b

    .line 164
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x1c

    .line 165
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /data\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x1d

    .line 166
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x1e

    .line 167
    const-string v14, "echo \"if [ -e /data/Test.log ]; then\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x1f

    .line 168
    const-string v14, "echo \"rm /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x20

    .line 169
    const-string v14, "echo \"fi\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x21

    .line 170
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x22

    .line 171
    const-string v14, "echo \"echo  \"Ryuinferno @ XDA 2012\" > /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x23

    .line 172
    const-string v14, "echo \"echo  \"Init.d is working !!!\" >> /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x24

    .line 173
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x25

    .line 174
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x26

    .line 175
    const-string v14, "echo \"#Script to set correct permissions to /system/etc/init.d folder by Ryuinferno @ XDA 2012\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x27

    .line 176
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x28

    .line 177
    const-string v14, "echo \"busybox chmod -R 777 /system/etc/init.d;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x29

    .line 178
    const-string v14, "echo \"\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x2a

    .line 179
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x2b

    .line 180
    const-string v14, "echo \"#Init.d Test\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x2c

    .line 181
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x2d

    .line 182
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /data\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x2e

    .line 183
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x2f

    .line 184
    const-string v14, "echo \"if [ -e /data/Test.log ]; then\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x30

    .line 185
    const-string v14, "echo \"rm /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x31

    .line 186
    const-string v14, "echo \"fi\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x32

    .line 187
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x33

    .line 188
    const-string v14, "echo \"echo  \"Ryuinferno @ XDA 2012\" > /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x34

    .line 189
    const-string v14, "echo \"echo  \"Init.d is working !!!\" >> /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x35

    .line 190
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x36

    .line 193
    const-string v14, "else"

    aput-object v14, v12, v13

    const/16 v13, 0x37

    .line 194
    const-string v14, "mkdir /system/etc/init.d"

    aput-object v14, v12, v13

    const/16 v13, 0x38

    .line 195
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x39

    .line 196
    const-string v14, "echo \"#Script to set correct permissions to /system/etc/init.d folder by Ryuinferno @ XDA 2012\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x3a

    .line 197
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x3b

    .line 198
    const-string v14, "echo \"busybox chmod -R 777 /system/etc/init.d;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x3c

    .line 199
    const-string v14, "echo \"\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x3d

    .line 200
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x3e

    .line 201
    const-string v14, "echo \"#Init.d Test\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x3f

    .line 202
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x40

    .line 203
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /data\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x41

    .line 204
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x42

    .line 205
    const-string v14, "echo \"if [ -e /data/Test.log ]; then\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x43

    .line 206
    const-string v14, "echo \"rm /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x44

    .line 207
    const-string v14, "echo \"fi\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x45

    .line 208
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x46

    .line 209
    const-string v14, "echo \"echo  \"Ryuinferno @ XDA 2012\" > /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x47

    .line 210
    const-string v14, "echo \"echo  \"Init.d is working !!!\" >> /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x48

    .line 211
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x49

    .line 212
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x4a

    .line 213
    const-string v14, "echo \"#Script to set correct permissions to /system/etc/init.d folder by Ryuinferno @ XDA 2012\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x4b

    .line 214
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x4c

    .line 215
    const-string v14, "echo \"busybox chmod -R 777 /system/etc/init.d;\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x4d

    .line 216
    const-string v14, "echo \"\" >> /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x4e

    .line 217
    const-string v14, "echo \"#!/system/bin/sh\" > /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x4f

    .line 218
    const-string v14, "echo \"#Init.d Test\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x50

    .line 219
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /system\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x51

    .line 220
    const-string v14, "echo \"busybox mount -o remount,rw -t auto /data\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x52

    .line 221
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x53

    .line 222
    const-string v14, "echo \"if [ -e /data/Test.log ]; then\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x54

    .line 223
    const-string v14, "echo \"rm /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x55

    .line 224
    const-string v14, "echo \"fi\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x56

    .line 225
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x57

    .line 226
    const-string v14, "echo \"echo  \"Ryuinferno @ XDA 2012\" > /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x58

    .line 227
    const-string v14, "echo \"echo  \"Init.d is working !!!\" >> /data/Test.log\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x59

    .line 228
    const-string v14, "echo \"\" >> /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x5a

    .line 229
    const-string v14, "fi"

    aput-object v14, v12, v13

    const/16 v13, 0x5b

    .line 231
    const-string v14, "chmod 777 /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x5c

    .line 232
    const-string v14, "chmod 777 /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x5d

    .line 233
    const-string v14, "chown 0.0 /system/etc/init.d"

    aput-object v14, v12, v13

    const/16 v13, 0x5e

    .line 234
    const-string v14, "chown 0.0 /system/etc/init.d/08setperm"

    aput-object v14, v12, v13

    const/16 v13, 0x5f

    .line 235
    const-string v14, "chown 0.0 /system/etc/init.d/00testinitd"

    aput-object v14, v12, v13

    const/16 v13, 0x60

    .line 237
    const-string v14, "if [ -e /system/bin/sysinit ]"

    aput-object v14, v12, v13

    const/16 v13, 0x61

    .line 238
    const-string v14, "then"

    aput-object v14, v12, v13

    const/16 v13, 0x62

    .line 239
    const-string v14, "echo \"#!/system/bin/sh\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x63

    .line 240
    const-string v14, "echo \"# init.d support\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x64

    .line 241
    const-string v14, "echo \"\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x65

    .line 242
    const-string v14, "echo \"export PATH=/sbin:/system/sbin:/system/bin:/system/xbin\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x66

    .line 243
    const-string v14, "echo \"/system/bin/logwrapper run-parts /system/etc/init.d\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x67

    .line 244
    const-string v14, "echo \"\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x68

    .line 245
    const-string v14, "awk \'!x[$0]++\' /system/bin/sysinit > /sdcard/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x69

    .line 246
    const-string v14, "cat /sdcard/sysinit > /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x6a

    .line 247
    const-string v14, "echo \"\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x6b

    .line 248
    const-string v14, "rm /sdcard/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x6c

    .line 250
    const-string v14, "else"

    aput-object v14, v12, v13

    const/16 v13, 0x6d

    .line 251
    const-string v14, "echo \"#!/system/bin/sh\" > /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x6e

    .line 252
    const-string v14, "echo \"# init.d support\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x6f

    .line 253
    const-string v14, "echo \"\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x70

    .line 254
    const-string v14, "echo \"export PATH=/sbin:/system/sbin:/system/bin:/system/xbin\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x71

    .line 255
    const-string v14, "echo \"/system/bin/logwrapper run-parts /system/etc/init.d\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x72

    .line 256
    const-string v14, "echo \"\" >> /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x73

    .line 257
    const-string v14, "fi"

    aput-object v14, v12, v13

    const/16 v13, 0x74

    .line 259
    const-string v14, "chmod 755 /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x75

    .line 260
    const-string v14, "chown 0.2000 /system/bin/sysinit"

    aput-object v14, v12, v13

    const/16 v13, 0x76

    .line 263
    const-string v14, "busybox mount -o ro,remount /system"

    .line 135
    aput-object v14, v12, v13

    invoke-direct {v2, p0, v11, v12}, Lcom/androguide/pimp/my/rom/ToolsInitd$1$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;I[Ljava/lang/String;)V

    .line 297
    .local v2, command:Lcom/stericson/RootTools/Command;
    const/4 v11, 0x1

    :try_start_0
    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v11

    invoke-virtual {v11}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #command:Lcom/stericson/RootTools/Command;
    .end local v4           #dialog:Landroid/app/Dialog;
    .end local v7           #t:Ljava/util/Timer;
    .end local v8           #text:Landroid/widget/TextView;
    :goto_0
    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    .line 337
    .local v3, context:Landroid/content/Context;
    const-string v10, "Done !"

    .line 338
    .local v10, txt:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    .line 339
    .local v5, duration:I
    invoke-static {v3, v10, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 341
    .local v9, toast:Landroid/widget/Toast;
    new-instance v7, Ljava/util/Timer;

    invoke-direct {v7}, Ljava/util/Timer;-><init>()V

    .line 342
    .restart local v7       #t:Ljava/util/Timer;
    new-instance v11, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;

    invoke-direct {v11, p0, v9, v7}, Lcom/androguide/pimp/my/rom/ToolsInitd$1$5;-><init>(Lcom/androguide/pimp/my/rom/ToolsInitd$1;Landroid/widget/Toast;Ljava/util/Timer;)V

    .line 348
    const-wide/16 v12, 0x1b58

    .line 342
    invoke-virtual {v7, v11, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 350
    return-void

    .line 298
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #duration:I
    .end local v9           #toast:Landroid/widget/Toast;
    .end local v10           #txt:Ljava/lang/CharSequence;
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    .restart local v1       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #command:Lcom/stericson/RootTools/Command;
    .restart local v4       #dialog:Landroid/app/Dialog;
    .restart local v8       #text:Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 300
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 303
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 306
    .local v6, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v6}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #command:Lcom/stericson/RootTools/Command;
    .end local v4           #dialog:Landroid/app/Dialog;
    .end local v6           #e:Ljava/util/concurrent/TimeoutException;
    .end local v7           #t:Ljava/util/Timer;
    .end local v8           #text:Landroid/widget/TextView;
    :cond_0
    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    .line 314
    .restart local v3       #context:Landroid/content/Context;
    const-string v10, "Do you have root permissions ?"

    .line 315
    .restart local v10       #txt:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    .line 316
    .restart local v5       #duration:I
    invoke-static {v3, v10, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 317
    .restart local v9       #toast:Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 318
    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 325
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #duration:I
    .end local v9           #toast:Landroid/widget/Toast;
    .end local v10           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v3

    .line 326
    .restart local v3       #context:Landroid/content/Context;
    const-string v10, "Busybox not found ! Please install it !"

    .line 327
    .restart local v10       #txt:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    .line 328
    .restart local v5       #duration:I
    invoke-static {v3, v10, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 329
    .restart local v9       #toast:Landroid/widget/Toast;
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 331
    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsInitd$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsInitd;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsInitd;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v11}, Lcom/androguide/pimp/my/rom/ToolsInitd;->access$0(Lcom/androguide/pimp/my/rom/ToolsInitd;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v11

    invoke-static {v11}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0
.end method
