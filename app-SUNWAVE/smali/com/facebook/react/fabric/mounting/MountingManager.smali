.class public Lcom/facebook/react/fabric/mounting/MountingManager;
.super Ljava/lang/Object;
.source "MountingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;
    }
.end annotation


# static fields
.field private static final MAX_STOPPED_SURFACE_IDS_LENGTH:I = 0xf

.field public static final TAG:Ljava/lang/String; = "MountingManager"


# instance fields
.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field private mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

.field private final mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 60
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 71
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 72
    iput-object p2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    return-void
.end method


# virtual methods
.method public attachRootView(ILandroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 1

    const-string v0, "attachView"

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    sget-object p1, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Trying to attach a view to a stopped surface"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 125
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    return-void
.end method

.method public clearJSResponder()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    return-void
.end method

.method public getEventEmitter(II)Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 328
    invoke-virtual {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 332
    :cond_1
    invoke-virtual {p1, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getSurfaceId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 167
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mLastQueriedSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1
.end method

.method public getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 3

    .line 173
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 176
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find SurfaceMountingManager for surfaceId: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Context: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    return-object p1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    .line 236
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->getViewExists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-nez p1, :cond_2

    .line 238
    iput-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 3

    .line 249
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/RetryableMountingLayerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find SurfaceMountingManager for tag: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/RetryableMountingLayerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewExists(I)Z
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForView(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initializeViewManager(Ljava/lang/String;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    return-void
.end method

.method public isWaitingForViewAttach(I)Z
    .locals 2

    .line 200
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isRootViewAttached()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public measure(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 12

    move-object v0, p0

    .line 365
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-object v2, p2

    .line 366
    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 367
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public measureMapBuffer(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J
    .locals 12

    move-object v0, p0

    .line 408
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-object v2, p2

    .line 409
    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 410
    invoke-virtual/range {v2 .. v11}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;Lcom/facebook/react/common/mapbuffer/MapBuffer;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;[F)J

    move-result-wide v1

    return-wide v1
.end method

.method public receiveCommand(IIILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const-string v0, "receiveCommand:int"

    .line 267
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 268
    invoke-virtual {p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->receiveCommand(IILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    .line 273
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const-string v0, "receiveCommand:string"

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 275
    invoke-virtual {p1, p2, p3, p4}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->receiveCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public sendAccessibilityEvent(III)V
    .locals 1

    .line 293
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 295
    invoke-virtual {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->sendAccessibilityEvent(II)V

    goto :goto_0

    :cond_0
    const-string v0, "sendAccessibilityEvent"

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerEnforced(ILjava/lang/String;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    .line 298
    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->sendAccessibilityEvent(II)V

    :goto_0
    return-void
.end method

.method public startSurface(ILcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;
    .locals 8

    .line 82
    new-instance v7, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    iget-object v3, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    iget-object v4, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMountItemExecutor:Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;

    move-object v0, v7

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;-><init>(ILcom/facebook/react/touch/JSResponderHandler;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$MountItemExecutor;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    .line 96
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v7, :cond_0

    .line 98
    sget-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called startSurface more than once for the SurfaceId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {v7, p3, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->attachRootView(Landroid/view/View;Lcom/facebook/react/uimanager/ThemedReactContext;)V

    :cond_1
    return-object v7
.end method

.method public stopSurface(I)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-eqz v0, :cond_1

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 135
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mSurfaceIdToManager:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    sget-object v2, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Removing stale SurfaceMountingManager: [%d]"

    invoke-static {v2, v3, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->stopSurface()V

    .line 143
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mMostRecentSurfaceMountingManager:Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    goto :goto_1

    .line 147
    :cond_1
    sget-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call stopSurface on non-existent surface: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public surfaceIsStopped(I)Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mStoppedSurfaceIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManager(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 304
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    if-nez p2, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getSurfaceManagerForViewEnforced(I)Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/SurfaceMountingManager;->updateProps(ILjava/lang/Object;)V

    return-void
.end method
