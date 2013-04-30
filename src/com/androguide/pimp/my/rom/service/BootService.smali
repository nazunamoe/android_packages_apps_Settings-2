.class public Lcom/androguide/pimp/my/rom/service/BootService;
.super Landroid/app/Service;
.source "BootService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;
    }
.end annotation


# static fields
.field public static final PREF_RENICE:Ljava/lang/String; = "Renice"

.field public static servicesStarted:Z


# instance fields
.field private MuPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androguide/pimp/my/rom/service/BootService;->servicesStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 145
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/androguide/pimp/my/rom/service/BootService;->stopSelf()V

    .line 33
    :cond_0
    new-instance v0, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;

    invoke-direct {v0, p0, p0}, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;-><init>(Lcom/androguide/pimp/my/rom/service/BootService;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/androguide/pimp/my/rom/service/BootService$BootWorker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    const/4 v0, 0x1

    return v0
.end method
