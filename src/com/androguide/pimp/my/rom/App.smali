.class public Lcom/androguide/pimp/my/rom/App;
.super Ljava/lang/Object;
.source "App.java"


# instance fields
.field private description:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/App;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/App;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/App;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/androguide/pimp/my/rom/App;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/androguide/pimp/my/rom/App;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/App;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/App;->packageName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/App;->title:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 42
    iput p1, p0, Lcom/androguide/pimp/my/rom/App;->versionCode:I

    .line 43
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/androguide/pimp/my/rom/App;->versionName:Ljava/lang/String;

    .line 35
    return-void
.end method
