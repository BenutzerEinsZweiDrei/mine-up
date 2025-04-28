.class Lcom/facebook/react/fabric/FabricUIManager$2;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/fabric/FabricUIManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/fabric/FabricUIManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/fabric/FabricUIManager;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager$2;->this$0:Lcom/facebook/react/fabric/FabricUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFabricCommitEnd(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;)V
    .locals 6

    .line 374
    sget-object v0, Lcom/facebook/react/fabric/FabricUIManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistic of Fabric commit #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getCommitNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n - Total commit time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getFinishTransactionEnd()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getCommitStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms.\n - Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getLayoutEnd()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getLayoutStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms.\n - Diffing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getDiffEnd()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getDiffStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms.\n - FinishTransaction (Diffing + JNI serialization): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getFinishTransactionEnd()J

    move-result-wide v2

    .line 387
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getFinishTransactionStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms.\n - Mounting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getBatchExecutionEnd()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getBatchExecutionStart()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
