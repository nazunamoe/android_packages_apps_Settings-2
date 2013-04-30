.class Lcom/androguide/pimp/my/rom/ToolsGPS$1;
.super Ljava/lang/Object;
.source "ToolsGPS.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ToolsGPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;


# direct methods
.method constructor <init>(Lcom/androguide/pimp/my/rom/ToolsGPS;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 74
    const v0, 0x7f0400c5

    if-ne p2, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x1

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const v0, 0x7f0400c6

    if-ne p2, v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x2

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    goto :goto_0

    .line 82
    :cond_2
    const v0, 0x7f0400c7

    if-ne p2, v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x3

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    goto :goto_0

    .line 86
    :cond_3
    const v0, 0x7f0400c8

    if-ne p2, v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x4

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    goto :goto_0

    .line 91
    :cond_4
    const v0, 0x7f0400c9

    if-ne p2, v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x5

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    goto :goto_0

    .line 96
    :cond_5
    const v0, 0x7f0400ca

    if-ne p2, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ToolsGPS$1;->this$0:Lcom/androguide/pimp/my/rom/ToolsGPS;

    const/4 v1, 0x6

    iput v1, v0, Lcom/androguide/pimp/my/rom/ToolsGPS;->Region:I

    goto :goto_0
.end method
