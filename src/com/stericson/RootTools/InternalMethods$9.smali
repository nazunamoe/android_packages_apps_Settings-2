.class Lcom/stericson/RootTools/InternalMethods$9;
.super Lcom/stericson/RootTools/Command;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$box:Ljava/lang/String;

.field private final synthetic val$util:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p3, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$box:Ljava/lang/String;

    iput-object p4, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$util:Ljava/lang/String;

    .line 1216
    invoke-direct {p0, p1, p2}, Lcom/stericson/RootTools/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output(ILjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "line"

    .prologue
    const/4 v2, 0x1

    .line 1221
    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$box:Ljava/lang/String;

    const-string v1, "toolbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    const-string v0, "no such tool"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->found:Z

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$box:Ljava/lang/String;

    const-string v1, "busybox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$util:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    const-string v0, "Found util!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1229
    sput-boolean v2, Lcom/stericson/RootTools/InternalVariables;->found:Z

    goto :goto_0
.end method
