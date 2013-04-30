.class Lcom/androguide/pimp/my/rom/Extras$3;
.super Ljava/lang/Object;
.source "Extras.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androguide/pimp/my/rom/Extras;->showWhatsNewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/Extras;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/Extras;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/Extras$3;->this$0:Lcom/androguide/pimp/my/rom/Extras;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    return-void
.end method
