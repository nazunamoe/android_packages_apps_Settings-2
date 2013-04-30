.class Lcom/androguide/pimp/my/rom/ModsBeats$2;
.super Ljava/lang/Object;
.source "ModsBeats.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ModsBeats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ModsBeats;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ModsBeats;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ModsBeats$2;)Lcom/androguide/pimp/my/rom/ModsBeats;
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "v"

    .prologue
    .line 173
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 176
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 179
    new-instance v3, Lcom/stericson/RootTools/CommandCapture;

    const/4 v13, 0x0

    const/16 v14, 0x20

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    .line 180
    const-string v16, "busybox mount -o rw,remount /system"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 182
    const-string v16, "sed -i \'/Beats Audio props/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 183
    const-string v16, "sed -i \'/htc.audio.swalt/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    .line 184
    const-string v16, "sed -i \'/htc.audio.alc.enable/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x4

    .line 185
    const-string v16, "sed -i \'/persist.service.xloud.enable/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 186
    const-string v16, "sed -i \'/af.resampler.quality=255/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x6

    .line 187
    const-string v16, "sed -i \'/af.resample=48000/d\' /system/build.prop"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    .line 189
    const-string v16, "rm -f /system/app/AwesomeBEATS.apk"

    aput-object v16, v14, v15

    const/16 v15, 0x8

    .line 190
    const-string v16, "rm -f /system/bin/basimage_ibeats.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    .line 191
    const-string v16, "rm -f /system/bin/basimage_ibeats_solo.bin"

    aput-object v16, v14, v15

    const/16 v15, 0xa

    .line 192
    const-string v16, "rm -f /system/bin/basimage_ibeats_solo_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    .line 193
    const-string v16, "rm -f /system/bin/basimage_ibeats_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0xc

    .line 194
    const-string v16, "rm -f /system/bin/dynimage_ibeats.bin"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    .line 195
    const-string v16, "rm -f /system/bin/dynimage_ibeats_solo.bin"

    aput-object v16, v14, v15

    const/16 v15, 0xe

    .line 196
    const-string v16, "rm -f /system/bin/dynimage_ibeats_solo_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0xf

    .line 197
    const-string v16, "rm -f /system/bin/dynimage_ibeats_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x10

    .line 198
    const-string v16, "rm -f /system/bin/peqimage_ibeats.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x11

    .line 199
    const-string v16, "rm -f /system/bin/peqimage_ibeats_solo.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x12

    .line 200
    const-string v16, "rm -f /system/bin/peqimage_ibeats_solo_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x13

    .line 202
    const-string v16, "rm -f /system/etc/basimage_ibeats.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x14

    .line 203
    const-string v16, "rm -f /system/etc/basimage_ibeats_solo.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x15

    .line 204
    const-string v16, "rm -f /system/etc/basimage_ibeats_solo_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x16

    .line 205
    const-string v16, "rm -f /system/etc/basimage_ibeats_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x17

    .line 206
    const-string v16, "rm -f /system/etc/dynimage_ibeats.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x18

    .line 207
    const-string v16, "rm -f /system/etc/dynimage_ibeats_solo.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x19

    .line 208
    const-string v16, "rm -f /system/etc/dynimage_ibeats_solo_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x1a

    .line 209
    const-string v16, "rm -f /system/etc/dynimage_ibeats_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x1b

    .line 210
    const-string v16, "rm -f /system/etc/peqimage_ibeats.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x1c

    .line 211
    const-string v16, "rm -f /system/etc/peqimage_ibeats_solo.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x1d

    .line 212
    const-string v16, "rm -f /system/etc/peqimage_ibeats_solo_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x1e

    .line 213
    const-string v16, "rm -f /system/etc/peqimage_ibeats_x.bin"

    aput-object v16, v14, v15

    const/16 v15, 0x1f

    .line 214
    const-string v16, "busybox mount -o ro,remount /system"

    .line 179
    aput-object v16, v14, v15

    invoke-direct {v3, v13, v14}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 219
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

    .line 258
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    #getter for: Lcom/androguide/pimp/my/rom/ModsBeats;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsBeats;->access$0(Lcom/androguide/pimp/my/rom/ModsBeats;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v2, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v13, "Reboot Now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 261
    const-string v13, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 262
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 263
    const-string v14, "Yes, Reboot !"

    new-instance v15, Lcom/androguide/pimp/my/rom/ModsBeats$2$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/ModsBeats$2$1;-><init>(Lcom/androguide/pimp/my/rom/ModsBeats$2;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 272
    const-string v14, "No, keep Pimpin\' !"

    new-instance v15, Lcom/androguide/pimp/my/rom/ModsBeats$2$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/androguide/pimp/my/rom/ModsBeats$2$2;-><init>(Lcom/androguide/pimp/my/rom/ModsBeats$2;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 275
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 279
    new-instance v5, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    #getter for: Lcom/androguide/pimp/my/rom/ModsBeats;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsBeats;->access$0(Lcom/androguide/pimp/my/rom/ModsBeats;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 280
    .local v5, dialog:Landroid/app/Dialog;
    const v13, 0x7f030017

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setContentView(I)V

    .line 281
    const-string v13, "Un-Pimpin\'..."

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    const v13, 0x7f040033

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 285
    .local v10, text:Landroid/widget/TextView;
    const-string v13, "Uninstalling Beats Audio..."

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    const v13, 0x7f040034

    invoke-virtual {v5, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 289
    .local v8, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 291
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    .line 292
    .local v9, t:Ljava/util/Timer;
    new-instance v13, Lcom/androguide/pimp/my/rom/ModsBeats$2$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v9}, Lcom/androguide/pimp/my/rom/ModsBeats$2$3;-><init>(Lcom/androguide/pimp/my/rom/ModsBeats$2;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 297
    const-wide/16 v14, 0x9c4

    .line 292
    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 301
    return-void

    .line 220
    .end local v1           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v5           #dialog:Landroid/app/Dialog;
    .end local v8           #spin:Landroid/widget/ProgressBar;
    .end local v9           #t:Ljava/util/Timer;
    .end local v10           #text:Landroid/widget/TextView;
    .restart local v3       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v7

    .line 222
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 223
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v7

    .line 225
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 226
    .end local v7           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 228
    .local v7, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v7}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 235
    .end local v3           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v7           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    #getter for: Lcom/androguide/pimp/my/rom/ModsBeats;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsBeats;->access$0(Lcom/androguide/pimp/my/rom/ModsBeats;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 236
    .local v4, context:Landroid/content/Context;
    const-string v12, "Do you have root permissions ?"

    .line 237
    .local v12, txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 238
    .local v6, duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 239
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    #getter for: Lcom/androguide/pimp/my/rom/ModsBeats;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsBeats;->access$0(Lcom/androguide/pimp/my/rom/ModsBeats;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 247
    .end local v4           #context:Landroid/content/Context;
    .end local v6           #duration:I
    .end local v11           #toast:Landroid/widget/Toast;
    .end local v12           #txt:Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    #getter for: Lcom/androguide/pimp/my/rom/ModsBeats;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsBeats;->access$0(Lcom/androguide/pimp/my/rom/ModsBeats;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 248
    .restart local v4       #context:Landroid/content/Context;
    const-string v12, "Busybox not found ! Please install it !"

    .line 249
    .restart local v12       #txt:Ljava/lang/CharSequence;
    const/4 v6, 0x1

    .line 250
    .restart local v6       #duration:I
    invoke-static {v4, v12, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 251
    .restart local v11       #toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androguide/pimp/my/rom/ModsBeats$2;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    #getter for: Lcom/androguide/pimp/my/rom/ModsBeats;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v13}, Lcom/androguide/pimp/my/rom/ModsBeats;->access$0(Lcom/androguide/pimp/my/rom/ModsBeats;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
