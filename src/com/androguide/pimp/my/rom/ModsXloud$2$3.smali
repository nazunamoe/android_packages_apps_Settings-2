.class Lcom/androguide/pimp/my/rom/ModsXloud$2$3;
.super Ljava/util/TimerTask;
.source "ModsXloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/ModsXloud$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androguide/pimp/my/rom/ModsXloud$2;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$t:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ModsXloud$2;Landroid/app/Dialog;Ljava/util/Timer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;->this$1:Lcom/androguide/pimp/my/rom/ModsXloud$2;

    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;->val$t:Ljava/util/Timer;

    .line 439
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 442
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsXloud$2$3;->val$t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 443
    return-void
.end method
