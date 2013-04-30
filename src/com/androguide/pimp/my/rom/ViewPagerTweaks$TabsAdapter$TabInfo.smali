.class final Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "ViewPagerTweaks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "_args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    .line 88
    iput-object p2, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/ViewPagerTweaks$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
