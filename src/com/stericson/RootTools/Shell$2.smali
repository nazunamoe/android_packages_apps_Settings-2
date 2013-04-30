.class Lcom/stericson/RootTools/Shell$2;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/Shell;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stericson/RootTools/Shell$2;->this$0:Lcom/stericson/RootTools/Shell;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/stericson/RootTools/Shell$2;->this$0:Lcom/stericson/RootTools/Shell;

    #calls: Lcom/stericson/RootTools/Shell;->readOutput()V
    invoke-static {v1}, Lcom/stericson/RootTools/Shell;->access$1(Lcom/stericson/RootTools/Shell;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0

    .line 262
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    goto :goto_0
.end method
