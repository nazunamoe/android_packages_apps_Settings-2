.class Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;
.super Ljava/lang/Object;
.source "ModsOpenvpn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ModsOpenvpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ModsOpenvpn;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ModsOpenvpn;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;->this$0:Lcom/androguide/pimp/my/rom/ModsOpenvpn;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;)Lcom/androguide/pimp/my/rom/ModsOpenvpn;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;->this$0:Lcom/androguide/pimp/my/rom/ModsOpenvpn;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 61
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isRootAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    new-instance v2, Lcom/stericson/RootTools/CommandCapture;

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/String;

    .line 68
    const-string v9, "busybox mount -o rw,remount /system"

    aput-object v9, v8, v11

    .line 69
    const-string v9, "cd /system/xbin"

    aput-object v9, v8, v10

    const/4 v9, 0x2

    .line 70
    const-string v10, "rm -f openvpn"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 71
    const-string v10, "wget http://gratos-life.fr/pimpmyrom/openvpn/openvpn"

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 72
    const-string v10, "chmod 777 openvpn"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    .line 73
    const-string v10, "mkdir bb && cd bb"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    .line 74
    const-string v10, "wget http://gratos-life.fr/pimpmyrom/openvpn/bb/placeholder"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    .line 75
    const-string v10, "chmod 777 placeholder"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    .line 76
    const-string v10, "busybox mount -o ro,remount /system"

    .line 67
    aput-object v10, v8, v9

    invoke-direct {v2, v11, v8}, Lcom/stericson/RootTools/CommandCapture;-><init>(I[Ljava/lang/String;)V

    .line 78
    .local v2, command:Lcom/stericson/RootTools/CommandCapture;
    const/4 v8, 0x1

    :try_start_0
    invoke-static {v8}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootTools/Shell;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    move-result-object v8

    invoke-virtual {v8}, Lcom/stericson/RootTools/Command;->waitForFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 91
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;->this$0:Lcom/androguide/pimp/my/rom/ModsOpenvpn;

    #getter for: Lcom/androguide/pimp/my/rom/ModsOpenvpn;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/ModsOpenvpn;->access$0(Lcom/androguide/pimp/my/rom/ModsOpenvpn;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v8, "Reboot Now ?"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 94
    const-string v8, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 95
    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 96
    const-string v9, "Yes, Reboot !"

    new-instance v10, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1$1;

    invoke-direct {v10, p0}, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1$1;-><init>(Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 105
    const-string v9, "No, keep Pimpin\' !"

    new-instance v10, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1$2;

    invoke-direct {v10, p0}, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1$2;-><init>(Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 108
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    new-instance v3, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;->this$0:Lcom/androguide/pimp/my/rom/ModsOpenvpn;

    #getter for: Lcom/androguide/pimp/my/rom/ModsOpenvpn;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v8}, Lcom/androguide/pimp/my/rom/ModsOpenvpn;->access$0(Lcom/androguide/pimp/my/rom/ModsOpenvpn;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 112
    .local v3, dialog:Landroid/app/Dialog;
    const v8, 0x7f030017

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 113
    const-string v8, "Please Wait..."

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    const v8, 0x7f040033

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 117
    .local v7, text:Landroid/widget/TextView;
    const-string v8, "Downloading and Installing..."

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v8, 0x7f040034

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 121
    .local v5, spin:Landroid/widget/ProgressBar;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 123
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 124
    .local v6, t:Ljava/util/Timer;
    new-instance v8, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1$3;

    invoke-direct {v8, p0, v3, v6}, Lcom/androguide/pimp/my/rom/ModsOpenvpn$1$3;-><init>(Lcom/androguide/pimp/my/rom/ModsOpenvpn$1;Landroid/app/Dialog;Ljava/util/Timer;)V

    .line 129
    const-wide/16 v9, 0x1388

    .line 124
    invoke-virtual {v6, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 144
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v2           #command:Lcom/stericson/RootTools/CommandCapture;
    .end local v3           #dialog:Landroid/app/Dialog;
    .end local v5           #spin:Landroid/widget/ProgressBar;
    .end local v6           #t:Ljava/util/Timer;
    .end local v7           #text:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 79
    .restart local v2       #command:Lcom/stericson/RootTools/CommandCapture;
    :catch_0
    move-exception v4

    .line 81
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    .line 84
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 87
    .local v4, e:Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto/16 :goto_0
.end method
