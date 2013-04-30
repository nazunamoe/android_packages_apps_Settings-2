.class Lcom/androguide/pimp/my/rom/TweaksEnable$2;
.super Ljava/lang/Object;
.source "TweaksEnable.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksEnable;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksEnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 236
    if-eqz p2, :cond_2

    .line 239
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 240
    .local v4, enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "GPU_Rendering"

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->gpu:Landroid/widget/ToggleButton;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$3(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/widget/ToggleButton;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 246
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 249
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x15

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 250
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 251
    const-string v10, "sed -i \'/Disable GPU Rendering on 2d Operations/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 252
    const-string v10, "sed -i \'/Force GPU Rendering on 2d Operations/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 253
    const-string v10, "sed -i \'/debug.sf.hw=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 254
    const-string v10, "sed -i \'/debug.egl.profiler=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 255
    const-string v10, "sed -i \'/debug.egl.hw=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 256
    const-string v10, "sed -i \'/debug.composition.type=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 258
    const-string v10, "echo \"### Pimp my Rom : Force GPU Rendering on 2d Operations (build.prop part)\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 259
    const-string v10, "echo \"debug.sf.hw=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    .line 260
    const-string v10, "echo \"debug.egl.profiler=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    .line 261
    const-string v10, "echo \"debug.egl.hw=1\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    .line 262
    const-string v10, "echo \"debug.composition.type=gpu\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    .line 264
    const-string v10, "sed -i \'/Force GPU Rendering on 2d Operations/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    .line 265
    const-string v10, "sed -i \'/libGLES_android/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0xe

    .line 266
    const-string v10, "sed -i \'/egl.cfg/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0xf

    .line 268
    const-string v10, "echo \"### Pimp my Rom : Force GPU Rendering on 2d Operations (init.d part)\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0x10

    .line 269
    const-string v10, "cp -pf /system/lib/egl/libGLES_android.so /sdcard/Android/data/com.androguide.pimp.my.rom/files/libGLES_android.so"

    aput-object v10, v8, v9

    const/16 v9, 0x11

    .line 270
    const-string v10, "echo \"cp -pf /system/lib/egl/libGLES_android.so /sdcard/Android/data/com.androguide.pimp.my.rom/files/libGLES_android.so\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0x12

    .line 271
    const-string v10, "echo \"rm -f /system/lib/egl/libGLES_android.so\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0x13

    .line 272
    const-string v10, "echo \"sed -i \'/0 0 android/d\' /system/lib/egl/egl.cfg\" >> /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0x14

    .line 274
    const-string v10, "busybox mount -o ro,remount /system"

    .line 249
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 279
    .local v0, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 401
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    :goto_0
    return-void

    .line 280
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v3

    .line 282
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 285
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 286
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 288
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 295
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_0
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 296
    .local v1, context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 297
    .local v6, txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 298
    .local v2, duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 299
    .local v5, toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 300
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto :goto_0

    .line 306
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 307
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 308
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 309
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 310
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 312
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto :goto_0

    .line 324
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v4           #enable:Landroid/content/SharedPreferences$Editor;
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->EPrefs:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$0(Lcom/androguide/pimp/my/rom/TweaksEnable;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 325
    .restart local v4       #enable:Landroid/content/SharedPreferences$Editor;
    const-string v7, "GPU_Rendering"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 332
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    new-instance v0, Lcom/stericson/RootTools/CommandCapture;

    const/4 v7, 0x0

    const/16 v8, 0x11

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 336
    const-string v10, "busybox mount -o rw,remount /system"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 337
    const-string v10, "sed -i \'/Disable GPU Rendering on 2d Operations/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    .line 338
    const-string v10, "sed -i \'/Force GPU Rendering on 2d Operations/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 339
    const-string v10, "sed -i \'/debug.sf.hw=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 340
    const-string v10, "sed -i \'/debug.egl.profiler=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 341
    const-string v10, "sed -i \'/debug.egl.hw=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 342
    const-string v10, "sed -i \'/debug.composition.type=/d\' /system/build.prop"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 343
    const-string v10, "echo \"### Pimp my Rom : Disable GPU Rendering on 2d Operations\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 344
    const-string v10, "echo \"debug.sf.hw=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    .line 345
    const-string v10, "echo \"debug.egl.profiler=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    .line 346
    const-string v10, "echo \"debug.egl.hw=0\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    .line 347
    const-string v10, "echo \"debug.composition.type=cpu\" >> /system/build.prop"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    .line 349
    const-string v10, "sed -i \'/Force GPU Rendering on 2d Operations/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    .line 350
    const-string v10, "sed -i \'/libGLES_android/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0xe

    .line 351
    const-string v10, "sed -i \'/egl.cfg/d\' /system/etc/init.d/99Pimp_my_Rom"

    aput-object v10, v8, v9

    const/16 v9, 0xf

    .line 352
    const-string v10, "cp -pf /sdcard/Android/data/com.androguide.pimp.my.rom/files/libGLES_android.so /system/lib/egl/libGLES_android.so"

    aput-object v10, v8, v9

    const/16 v9, 0x10

    .line 353
    const-string v10, "busybox mount -o ro,remount /system"

    .line 335
    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 358
    .restart local v0       #command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_0

    .line 359
    :catch_3
    move-exception v3

    .line 361
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 362
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v3

    .line 364
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 365
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 367
    .local v3, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 374
    .end local v0           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #e:Ljava/util/concurrent/TimeoutException;
    :cond_3
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 375
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Do you have root permissions ?"

    .line 376
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 377
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 378
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerSuperUser(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 385
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #duration:I
    .end local v5           #toast:Landroid/widget/Toast;
    .end local v6           #txt:Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 386
    .restart local v1       #context:Landroid/content/Context;
    const-string v6, "Busybox not found ! Please install it !"

    .line 387
    .restart local v6       #txt:Ljava/lang/CharSequence;
    const/4 v2, 0x1

    .line 388
    .restart local v2       #duration:I
    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 389
    .restart local v5       #toast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 391
    iget-object v7, p0, Lcom/androguide/pimp/my/rom/TweaksEnable$2;->this$0:Lcom/androguide/pimp/my/rom/TweaksEnable;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksEnable;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v7}, Lcom/androguide/pimp/my/rom/TweaksEnable;->access$2(Lcom/androguide/pimp/my/rom/TweaksEnable;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/stericson/RootTools/RootTools;->offerBusyBox(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
