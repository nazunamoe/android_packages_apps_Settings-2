.class public Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "ToolsVoltageControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsVoltageControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CustomDialogFragment"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/app/Dialog;)Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;
    .locals 1
    .parameter "dialog"

    .prologue
    .line 321
    new-instance v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;

    invoke-direct {v0}, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;-><init>()V

    .line 322
    .local v0, frag:Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;
    iput-object p0, v0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 323
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsVoltageControl$CustomDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method
