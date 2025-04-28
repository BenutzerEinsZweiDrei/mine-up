.class public Lcom/swmansion/reanimated/ReanimatedModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ReanimatedModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/facebook/react/uimanager/UIManagerModuleListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ReanimatedModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ReanimatedModule"


# instance fields
.field private mNodesManager:Lcom/swmansion/reanimated/NodesManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/reanimated/ReanimatedModule$UIThreadOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionManager:Lcom/swmansion/reanimated/transitions/TransitionModule;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public animateNextTransition(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mTransitionManager:Lcom/swmansion/reanimated/transitions/TransitionModule;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/transitions/TransitionModule;->animateNextTransition(ILcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public attachEvent(ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/swmansion/reanimated/ReanimatedModule$8;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connectNodeToView(II)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$6;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connectNodes(II)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$4;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createNode(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$2;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;ILcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public detachEvent(ILjava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/swmansion/reanimated/ReanimatedModule$9;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disconnectNodeFromView(II)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$7;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disconnectNodes(II)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$5;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dropNode(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$3;

    invoke-direct {v1, p0, p1}, Lcom/swmansion/reanimated/ReanimatedModule$3;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ReanimatedModule"

    return-object v0
.end method

.method public getNodesManager()Lcom/swmansion/reanimated/NodesManager;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/swmansion/reanimated/NodesManager;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    return-object v0
.end method

.method public getValue(ILcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$10;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;ILcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 44
    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 45
    invoke-virtual {v1, p0}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIManagerListener(Lcom/facebook/react/uimanager/UIManagerModuleListener;)V

    .line 46
    new-instance v0, Lcom/swmansion/reanimated/transitions/TransitionModule;

    invoke-direct {v0, v1}, Lcom/swmansion/reanimated/transitions/TransitionModule;-><init>(Lcom/facebook/react/uimanager/UIManagerModule;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mTransitionManager:Lcom/swmansion/reanimated/transitions/TransitionModule;

    .line 48
    iput-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    return-void
.end method

.method public installTurboModule()V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    .line 109
    sget-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swmansion/reanimated/ReanimatedModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/NodesManager;->initWithContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    goto :goto_1

    :cond_1
    const-string v0, "[REANIMATED]"

    const-string v1, "Unable to create Reanimated Native Module. You can ignore this message if you are using Chrome Debugger now."

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 247
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onCatalystInstanceDestroy()V

    :cond_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onHostPause()V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->onHostResume()V

    :cond_0
    return-void
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public setValue(ILjava/lang/Double;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/swmansion/reanimated/ReanimatedModule$11;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;ILjava/lang/Double;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public willDispatchViewUpdates(Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/swmansion/reanimated/ReanimatedModule;->mOperations:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Lcom/swmansion/reanimated/ReanimatedModule$1;

    invoke-direct {v1, p0, v0}, Lcom/swmansion/reanimated/ReanimatedModule$1;-><init>(Lcom/swmansion/reanimated/ReanimatedModule;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method
