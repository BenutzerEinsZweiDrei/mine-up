.class public Lcom/swmansion/reanimated/nodes/DebugNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "DebugNode.java"


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mValueID:I


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "message"

    const-string p3, "Reanimated: First argument passed to debug node is either of wrong type or is missing."

    .line 16
    invoke-static {p2, p1, p3}, Lcom/swmansion/reanimated/MapUtils;->getString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/DebugNode;->mMessage:Ljava/lang/String;

    const-string p1, "value"

    const-string p3, "Reanimated: Second argument passed to debug node is either of wrong type or is missing."

    .line 21
    invoke-static {p2, p1, p3}, Lcom/swmansion/reanimated/MapUtils;->getInt(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/swmansion/reanimated/nodes/DebugNode;->mValueID:I

    return-void
.end method


# virtual methods
.method protected evaluate()Ljava/lang/Object;
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/DebugNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v1, p0, Lcom/swmansion/reanimated/nodes/DebugNode;->mValueID:I

    const-class v2, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v0, v1, v2}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/DebugNode;->mMessage:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REANIMATED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
