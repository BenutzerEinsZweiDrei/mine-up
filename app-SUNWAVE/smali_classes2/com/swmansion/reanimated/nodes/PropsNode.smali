.class public Lcom/swmansion/reanimated/nodes/PropsNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "PropsNode.java"

# interfaces
.implements Lcom/swmansion/reanimated/nodes/FinalNode;


# instance fields
.field private mConnectedViewTag:I

.field private final mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

.field private final mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;


# direct methods
.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;Lcom/facebook/react/uimanager/UIImplementation;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    const-string p1, "props"

    .line 54
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-static {p1}, Lcom/swmansion/reanimated/Utils;->processMapping(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mMapping:Ljava/util/Map;

    .line 55
    iput-object p4, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 56
    new-instance p1, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {p1}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    .line 57
    new-instance p2, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object p2, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    return-void
.end method

.method private static addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 28
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 30
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 31
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 32
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 33
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 34
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 35
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 36
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 37
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 38
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_5
    instance-of v0, p2, Lcom/facebook/react/bridge/WritableArray;

    if-eqz v0, :cond_6

    .line 40
    check-cast p2, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 41
    :cond_6
    instance-of v0, p2, Lcom/facebook/react/bridge/WritableMap;

    if-eqz v0, :cond_7

    .line 42
    check-cast p2, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_0
    return-void

    .line 44
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown type of animated value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public connectToView(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    .line 62
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/PropsNode;->dangerouslyRescheduleEvaluate()V

    return-void
.end method

.method public disconnectFromView(I)V
    .locals 0

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    return-void
.end method

.method protected evaluate()Ljava/lang/Double;
    .locals 15

    .line 74
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 78
    iget-object v8, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-class v10, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v8, v9, v10}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v8

    .line 79
    instance-of v9, v8, Lcom/swmansion/reanimated/nodes/StyleNode;

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    .line 80
    invoke-virtual {v8}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/react/bridge/WritableMap;

    .line 81
    invoke-interface {v7}, Lcom/facebook/react/bridge/WritableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v8

    .line 82
    :goto_1
    invoke-interface {v8}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 83
    invoke-interface {v8}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v9

    .line 85
    iget-object v11, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v11, v11, Lcom/swmansion/reanimated/NodesManager;->uiProps:Ljava/util/Set;

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 87
    iget-object v4, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    move v11, v6

    move v6, v5

    move v5, v10

    goto :goto_2

    .line 88
    :cond_1
    iget-object v11, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v11, v11, Lcom/swmansion/reanimated/NodesManager;->nativeProps:Ljava/util/Set;

    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v5, v4

    move v11, v6

    move v6, v10

    move-object v4, v1

    goto :goto_2

    :cond_2
    move v6, v5

    move v11, v10

    move v5, v4

    move-object v4, v0

    .line 95
    :goto_2
    invoke-interface {v7, v9}, Lcom/facebook/react/bridge/WritableMap;->getType(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v12

    .line 96
    sget-object v13, Lcom/swmansion/reanimated/nodes/PropsNode$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v12}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v10, :cond_5

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    .line 104
    invoke-interface {v7, v9}, Lcom/facebook/react/bridge/WritableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v4, v9, v12}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_3

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4
    invoke-interface {v7, v9}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v9, v12}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_5
    invoke-interface {v7, v9}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-interface {v4, v9, v12, v13}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    :goto_3
    move v4, v5

    move v5, v6

    move v6, v11

    goto :goto_1

    .line 111
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 112
    invoke-virtual {v8}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v8

    .line 113
    iget-object v9, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v9, v9, Lcom/swmansion/reanimated/NodesManager;->uiProps:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 115
    iget-object v4, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mPropMap:Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-static {v4, v7, v8}, Lcom/swmansion/reanimated/nodes/PropsNode;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    move v4, v10

    goto/16 :goto_0

    .line 118
    :cond_7
    invoke-static {v1, v7, v8}, Lcom/swmansion/reanimated/nodes/PropsNode;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v10

    goto/16 :goto_0

    .line 123
    :cond_8
    iget v2, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_b

    if-eqz v4, :cond_9

    .line 125
    iget-object v4, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    iget-object v7, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mDiffMap:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-virtual {v4, v2, v7}, Lcom/facebook/react/uimanager/UIImplementation;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    :cond_9
    if-eqz v5, :cond_a

    .line 128
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget v4, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    invoke-virtual {v2, v4, v1, v3}, Lcom/swmansion/reanimated/NodesManager;->enqueueUpdateViewOnNativeThread(ILcom/facebook/react/bridge/WritableMap;Z)V

    :cond_a
    if-eqz v6, :cond_b

    .line 131
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 132
    iget v2, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    const-string v3, "viewTag"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v2, "props"

    .line 133
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 134
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    const-string v2, "onReanimatedPropsChange"

    invoke-virtual {v0, v2, v1}, Lcom/swmansion/reanimated/NodesManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 138
    :cond_b
    sget-object v0, Lcom/swmansion/reanimated/nodes/PropsNode;->ZERO:Ljava/lang/Double;

    return-object v0
.end method

.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/PropsNode;->evaluate()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 2

    .line 146
    iget v0, p0, Lcom/swmansion/reanimated/nodes/PropsNode;->mConnectedViewTag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/PropsNode;->value()Ljava/lang/Object;

    return-void
.end method
