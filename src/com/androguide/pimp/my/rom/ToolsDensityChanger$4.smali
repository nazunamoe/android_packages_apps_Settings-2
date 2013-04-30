.class Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;)Lcom/androguide/pimp/my/rom/ToolsDensityChanger;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    .line 270
    const-string v9, "ro.sf.lcd_density"

    invoke-static {v9}, Lcom/androguide/pimp/my/rom/helper/Helper;->findBuildPropValueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, verif:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 274
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 276
    .local v7, verif_int:I
    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DensityPrefs:Landroid/content/SharedPreferences;
    invoke-static {v9}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$0(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "SharedPrefsDensityChanger"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 279
    .local v8, verif_stock:I
    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v9, v9, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DPI:I

    const/16 v10, 0x78

    if-lt v9, v10, :cond_2

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v9, v9, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DPI:I

    const/16 v10, 0x168

    if-gt v9, v10, :cond_2

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v9, v9, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DPI:I

    if-eq v9, v7, :cond_2

    .line 282
    add-int/lit8 v9, v7, 0x64

    if-ge v9, v8, :cond_0

    add-int/lit8 v9, v7, -0x64

    if-gt v9, v8, :cond_1

    .line 283
    :cond_0
    if-eqz v8, :cond_1

    .line 285
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v9}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v9, "Warning !"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 288
    const-string v9, "We\'ve detected that you\'re trying to change your density of a high amount at once ( > 100 dpi from your stock density). This can lead to unexpected issues !\nAre you sure of what you\'re doing ?"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 290
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 291
    const-string v10, "YES"

    new-instance v11, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$1;

    invoke-direct {v11, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$1;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 298
    const-string v10, "NO"

    new-instance v11, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$2;

    invoke-direct {v11, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$2;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 305
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 309
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string v9, "rw"

    invoke-static {v9}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 310
    new-instance v9, Lcom/androguide/pimp/my/rom/util/CMDProcessor;

    invoke-direct {v9}, Lcom/androguide/pimp/my/rom/util/CMDProcessor;-><init>()V

    iget-object v9, v9, Lcom/androguide/pimp/my/rom/util/CMDProcessor;->su:Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "busybox sed -i \'s|ro.sf.lcd_density=.*|ro.sf.lcd_density="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v11, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget v11, v11, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->DPI:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|\' "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/system/build.prop"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 310
    invoke-virtual {v9, v10}, Lcom/androguide/pimp/my/rom/util/CMDProcessor$SH;->runWaitFor(Ljava/lang/String;)Lcom/androguide/pimp/my/rom/util/CMDProcessor$CommandResult;

    .line 312
    const-string v9, "ro"

    invoke-static {v9}, Lcom/androguide/pimp/my/rom/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 314
    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    iget-object v9, v9, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->dialog2:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->cancel()V

    .line 316
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v9}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v1       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const-string v9, "Reboot Now ?"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    const-string v9, "Reboot needed to apply new changes, do you want to reboot now ?"

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 320
    invoke-virtual {v9, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 321
    const-string v10, "Yes, Reboot !"

    new-instance v11, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$3;

    invoke-direct {v11, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$3;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 330
    const-string v10, "No, keep Pimpin\' !"

    new-instance v11, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$4;

    invoke-direct {v11, p0}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4$4;-><init>(Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 337
    .restart local v0       #alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 365
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v7           #verif_int:I
    .end local v8           #verif_stock:I
    :goto_0
    return-void

    .line 341
    .restart local v7       #verif_int:I
    .restart local v8       #verif_stock:I
    :cond_2
    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v9}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 342
    .local v2, context:Landroid/content/Context;
    const-string v5, "Please select a new density first !"

    .line 343
    .local v5, txt:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 344
    .local v3, duration:I
    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 345
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 350
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #duration:I
    .end local v4           #toast:Landroid/widget/Toast;
    .end local v5           #txt:Ljava/lang/CharSequence;
    .end local v7           #verif_int:I
    .end local v8           #verif_stock:I
    :cond_3
    iget-object v9, p0, Lcom/androguide/pimp/my/rom/ToolsDensityChanger$4;->this$0:Lcom/androguide/pimp/my/rom/ToolsDensityChanger;

    #getter for: Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v9}, Lcom/androguide/pimp/my/rom/ToolsDensityChanger;->access$1(Lcom/androguide/pimp/my/rom/ToolsDensityChanger;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 351
    .restart local v2       #context:Landroid/content/Context;
    const-string v5, "Please select a new density first !"

    .line 352
    .restart local v5       #txt:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 353
    .restart local v3       #duration:I
    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 354
    .restart local v4       #toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
