.class Lcom/androguide/pimp/my/rom/TweaksDalvik$6;
.super Lcom/stericson/RootTools/Command;
.source "TweaksDalvik.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/TweaksDalvik;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;


# direct methods
.method varargs constructor <init>(Lcom/androguide/pimp/my/rom/TweaksDalvik;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    .line 288
    invoke-direct {p0, p2, p3}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 4
    .parameter "id2"
    .parameter "line3"

    .prologue
    .line 292
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 296
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, heapstart:I
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar3:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 299
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->start:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Heap Growth Limit : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v3, v3, Lcom/androguide/pimp/my/rom/TweaksDalvik;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    .end local v0           #heapstart:I
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->value:Landroid/widget/TextView;

    const-string v2, "Current Heap Start Size Not Found !"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v1, p0, Lcom/androguide/pimp/my/rom/TweaksDalvik$6;->this$0:Lcom/androguide/pimp/my/rom/TweaksDalvik;

    iget-object v1, v1, Lcom/androguide/pimp/my/rom/TweaksDalvik;->seekbar3:Landroid/widget/SeekBar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
