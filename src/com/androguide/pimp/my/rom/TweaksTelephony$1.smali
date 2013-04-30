.class Lcom/androguide/pimp/my/rom/TweaksTelephony$1;
.super Ljava/lang/Object;
.source "TweaksTelephony.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksTelephony;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/TweaksTelephony$1;->this$0:Lcom/androguide/pimp/my/rom/TweaksTelephony;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/TweaksTelephony;->updateValues()V

    .line 854
    return-void
.end method
