.class Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;


# direct methods
.method constructor <init>(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;

    .line 250
    invoke-direct {p0}, Lcom/stericson/RootTools/RootTools$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3
    .parameter "diag"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;

    const/4 v1, 0x3

    const-string v2, "------\nDone.\n"

    #calls: Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 265
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 4
    .parameter "ex"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    .line 260
    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 4
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 254
    return-void
.end method

.method public processError(Ljava/lang/String;)V
    .locals 4
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread$1;->this$1:Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools$SanityCheckThread;ILjava/lang/String;)V

    .line 270
    return-void
.end method
