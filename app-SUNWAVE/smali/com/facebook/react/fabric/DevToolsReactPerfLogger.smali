.class public Lcom/facebook/react/fabric/DevToolsReactPerfLogger;
.super Ljava/lang/Object;
.source "DevToolsReactPerfLogger.java"

# interfaces
.implements Lcom/facebook/react/bridge/ReactMarker$FabricMarkerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;,
        Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;
    }
.end annotation


# instance fields
.field private final mDevToolsReactPerfLoggerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFabricCommitMarkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mFabricCommitMarkers:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mDevToolsReactPerfLoggerListeners:Ljava/util/List;

    return-void
.end method

.method private static isFabricCommitMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)Z
    .locals 1

    .line 135
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onFabricCommitEnd(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mDevToolsReactPerfLoggerListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;

    .line 130
    invoke-interface {v1, p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;->onFabricCommitEnd(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDevToolsReactPerfLoggerListener(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mDevToolsReactPerfLoggerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V
    .locals 2

    .line 113
    invoke-static {p1}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->isFabricCommitMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 114
    iget-object p2, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mFabricCommitMarkers:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;

    if-nez p2, :cond_0

    .line 116
    new-instance p2, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;-><init>(ILcom/facebook/react/fabric/DevToolsReactPerfLogger$1;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mFabricCommitMarkers:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    invoke-static {p2, p1, p4, p5}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;->access$100(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;Lcom/facebook/react/bridge/ReactMarkerConstants;J)V

    .line 121
    sget-object p4, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_BATCH_EXECUTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    if-ne p1, p4, :cond_1

    .line 122
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->onFabricCommitEnd(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$FabricCommitPoint;)V

    .line 123
    iget-object p1, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mFabricCommitMarkers:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removeDevToolsReactPerfLoggerListener(Lcom/facebook/react/fabric/DevToolsReactPerfLogger$DevToolsReactPerfLoggerListener;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/facebook/react/fabric/DevToolsReactPerfLogger;->mDevToolsReactPerfLoggerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
