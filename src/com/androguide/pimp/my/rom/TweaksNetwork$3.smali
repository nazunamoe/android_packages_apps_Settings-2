.class Lcom/androguide/pimp/my/rom/TweaksNetwork$3;
.super Ljava/lang/Object;
.source "TweaksNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/TweaksNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/TweaksNetwork;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 632
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/TweaksNetwork$3;->this$0:Lcom/androguide/pimp/my/rom/TweaksNetwork;

    #getter for: Lcom/androguide/pimp/my/rom/TweaksNetwork;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v4}, Lcom/androguide/pimp/my/rom/TweaksNetwork;->access$0(Lcom/androguide/pimp/my/rom/TweaksNetwork;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 633
    .local v0, context:Landroid/content/Context;
    const-string v2, "Help Center Coming Soon !"

    .line 634
    .local v2, help:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 635
    .local v1, duration:I
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 636
    .local v3, helptoast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 639
    return-void
.end method
