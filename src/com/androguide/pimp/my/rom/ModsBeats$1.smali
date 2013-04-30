.class Lcom/androguide/pimp/my/rom/ModsBeats$1;
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
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ModsBeats$1;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ModsBeats$1;->this$0:Lcom/androguide/pimp/my/rom/ModsBeats;

    invoke-virtual {v0}, Lcom/androguide/pimp/my/rom/ModsBeats;->updateData()V

    .line 162
    return-void
.end method
