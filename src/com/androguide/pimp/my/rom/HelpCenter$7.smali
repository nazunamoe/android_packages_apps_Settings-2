.class Lcom/androguide/pimp/my/rom/HelpCenter$7;
.super Ljava/lang/Object;
.source "HelpCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/HelpCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/HelpCenter;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/HelpCenter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/HelpCenter$7;->this$0:Lcom/androguide/pimp/my/rom/HelpCenter;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 213
    iget-object v4, p0, Lcom/androguide/pimp/my/rom/HelpCenter$7;->this$0:Lcom/androguide/pimp/my/rom/HelpCenter;

    #getter for: Lcom/androguide/pimp/my/rom/HelpCenter;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-static {v4}, Lcom/androguide/pimp/my/rom/HelpCenter;->access$0(Lcom/androguide/pimp/my/rom/HelpCenter;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    .local v0, context:Landroid/content/Context;
    const-string v3, "Coming Soon !"

    .line 215
    .local v3, txt:Ljava/lang/CharSequence;
    const/4 v1, 0x1

    .line 216
    .local v1, duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 217
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 219
    return-void
.end method
