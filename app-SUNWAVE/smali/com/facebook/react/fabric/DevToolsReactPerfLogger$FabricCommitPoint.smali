.class public Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;
.super Ljava/lang/Object;
.source "DevToolsReactPerfLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/fabric/DevToolsReactPerfLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FabricCommitPoint"
.end annotation


# instance fields
.field private final mCommitNumber:J

.field private final mPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/react/bridge/ReactMarkerConstants;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->mPoints:Ljava/util/Map;

    int-to-long v0, p1

    .line 36
    iput-wide v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->mCommitNumber:J

    return-void
.end method

.method synthetic constructor <init>(ILcom/facebook/react/fabric/DevToolsReactPerfLogger$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;-><init>(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;Lcom/facebook/react/bridge/ReactMarkerConstants;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->addPoint(Lcom/facebook/react/bridge/ReactMarkerConstants;J)V

    return-void
.end method

.method private addPoint(Lcom/facebook/react/bridge/ReactMarkerConstants;J)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->mPoints:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->mPoints:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public getBatchExecutionEnd()J
    .locals 2

    .line 89
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatchExecutionStart()J
    .locals 2

    .line 85
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommitEnd()J
    .locals 2

    .line 57
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommitNumber()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->mCommitNumber:J

    return-wide v0
.end method

.method public getCommitStart()J
    .locals 2

    .line 53
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiffEnd()J
    .locals 2

    .line 73
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiffStart()J
    .locals 2

    .line 69
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinishTransactionEnd()J
    .locals 2

    .line 65
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinishTransactionStart()J
    .locals 2

    .line 61
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayoutEnd()J
    .locals 2

    .line 81
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayoutStart()J
    .locals 2

    .line 77
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateUIMainThreadEnd()J
    .locals 2

    .line 97
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUpdateUIMainThreadStart()J
    .locals 2

    .line 93
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->getValue(Lcom/facebook/react/bridge/ReactMarkerConstants;)J

    move-result-wide v0

    return-wide v0
.end method
