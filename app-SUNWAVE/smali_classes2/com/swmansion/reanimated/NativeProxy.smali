.class public Lcom/swmansion/reanimated/NativeProxy;
.super Ljava/lang/Object;
.source "NativeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/NativeProxy$SensorSetter;,
        Lcom/swmansion/reanimated/NativeProxy$EventHandler;,
        Lcom/swmansion/reanimated/NativeProxy$AnimationFrameCallback;
    }
.end annotation


# instance fields
.field private firstUptime:Ljava/lang/Long;

.field private final gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private mNodesManager:Lcom/swmansion/reanimated/NodesManager;

.field private mScheduler:Lcom/swmansion/reanimated/Scheduler;

.field private reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

.field private slowAnimationsEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$Kd8rwkBau0QMaFG3f_tf4u8V4LU(Lcom/swmansion/reanimated/NativeProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/reanimated/NativeProxy;->toggleSlowAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "reanimated"

    .line 34
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 8

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mScheduler:Lcom/swmansion/reanimated/Scheduler;

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/swmansion/reanimated/NativeProxy;->firstUptime:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/swmansion/reanimated/NativeProxy;->slowAnimationsEnabled:Z

    .line 104
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/react/bridge/CatalystInstance;->getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    .line 105
    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;

    invoke-direct {v1, p1}, Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 106
    new-instance v2, Lcom/swmansion/reanimated/Scheduler;

    invoke-direct {v2, p1}, Lcom/swmansion/reanimated/Scheduler;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/NativeProxy;->mScheduler:Lcom/swmansion/reanimated/Scheduler;

    .line 109
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v3

    iget-object v6, p0, Lcom/swmansion/reanimated/NativeProxy;->mScheduler:Lcom/swmansion/reanimated/Scheduler;

    move-object v2, p0

    move-object v7, v1

    .line 108
    invoke-direct/range {v2 .. v7}, Lcom/swmansion/reanimated/NativeProxy;->initHybrid(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/swmansion/reanimated/Scheduler;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/facebook/jni/HybridData;

    move-result-object v2

    iput-object v2, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 110
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/NativeProxy;->mContext:Ljava/lang/ref/WeakReference;

    .line 111
    invoke-virtual {p0, v1}, Lcom/swmansion/reanimated/NativeProxy;->prepare(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V

    .line 112
    new-instance v1, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    invoke-direct {v1, v2}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/swmansion/reanimated/NativeProxy;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    .line 113
    invoke-direct {p0}, Lcom/swmansion/reanimated/NativeProxy;->addDevMenuOption()V

    :try_start_0
    const-string v1, "com.swmansion.gesturehandler.react.RNGestureHandlerModule"

    .line 119
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 121
    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object p1

    check-cast p1, Lcom/swmansion/common/GestureHandlerStateManager;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 125
    :catch_0
    iput-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    return-void
.end method

.method private addDevMenuOption()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/ReactApplication;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mContext:Ljava/lang/ref/WeakReference;

    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactApplication;

    .line 154
    invoke-interface {v0}, Lcom/facebook/react/ReactApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/swmansion/reanimated/NativeProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/reanimated/NativeProxy$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/NativeProxy;)V

    const-string v2, "Toggle slow animations (Reanimated)"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->addCustomDevOption(Ljava/lang/String;Lcom/facebook/react/devsupport/interfaces/DevOptionHandler;)V

    :cond_0
    return-void
.end method

.method private configureProps(Lcom/facebook/react/bridge/ReadableNativeArray;Lcom/facebook/react/bridge/ReadableNativeArray;)V
    .locals 1

    .line 209
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/NativeProxy;->convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;

    move-result-object p1

    .line 210
    invoke-direct {p0, p2}, Lcom/swmansion/reanimated/NativeProxy;->convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;

    move-result-object p2

    .line 211
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->configureProps(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private convertProps(Lcom/facebook/react/bridge/ReadableNativeArray;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableNativeArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 216
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReadableNativeArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v1, 0x0

    .line 217
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 218
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getUptime()Ljava/lang/String;
    .locals 6

    .line 192
    iget-boolean v0, p0, Lcom/swmansion/reanimated/NativeProxy;->slowAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->firstUptime:Ljava/lang/Long;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/swmansion/reanimated/NativeProxy;->firstUptime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native initHybrid(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/swmansion/reanimated/Scheduler;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)Lcom/facebook/jni/HybridData;
.end method

.method private native installJSIBindings()V
.end method

.method private measure(I)[F
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->measure(I)[F

    move-result-object p1

    return-object p1
.end method

.method private obtainProp(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->obtainProp(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private registerEventHandler(Lcom/swmansion/reanimated/NativeProxy$EventHandler;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getEventNameResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/swmansion/reanimated/NativeProxy$EventHandler;->access$002(Lcom/swmansion/reanimated/NativeProxy$EventHandler;Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;)Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    .line 226
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->registerEventHandler(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    return-void
.end method

.method private registerSensor(IILcom/swmansion/reanimated/NativeProxy$SensorSetter;)I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    .line 232
    invoke-static {p1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;->getInstanceById(I)Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;

    move-result-object p1

    .line 231
    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->registerSensor(Lcom/swmansion/reanimated/sensor/ReanimatedSensorType;ILcom/swmansion/reanimated/NativeProxy$SensorSetter;)I

    move-result p1

    return p1
.end method

.method private requestRender(Lcom/swmansion/reanimated/NativeProxy$AnimationFrameCallback;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/NodesManager;->postOnAnimation(Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;)V

    return-void
.end method

.method private scrollTo(IDDZ)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/reanimated/NodesManager;->scrollTo(IDDZ)V

    return-void
.end method

.method private setGestureState(II)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->gestureHandlerStateManager:Lcom/swmansion/common/GestureHandlerStateManager;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1, p2}, Lcom/swmansion/common/GestureHandlerStateManager;->setGestureHandlerState(II)V

    :cond_0
    return-void
.end method

.method private toggleSlowAnimations()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/swmansion/reanimated/NativeProxy;->slowAnimationsEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/reanimated/NativeProxy;->slowAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->firstUptime:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method private unregisterSensor(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->reanimatedSensorContainer:Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;

    invoke-virtual {v0, p1}, Lcom/swmansion/reanimated/sensor/ReanimatedSensorContainer;->unregisterSensor(I)V

    return-void
.end method

.method private updateProps(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    invoke-virtual {v0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->updateProps(ILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getScheduler()Lcom/swmansion/reanimated/Scheduler;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mScheduler:Lcom/swmansion/reanimated/Scheduler;

    return-object v0
.end method

.method public native isAnyHandlerWaitingForEvent(Ljava/lang/String;)Z
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mScheduler:Lcom/swmansion/reanimated/Scheduler;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/Scheduler;->deactivate()V

    .line 242
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method

.method public prepare(Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V
    .locals 3

    .line 246
    sget-boolean v0, Lcom/swmansion/reanimated/Utils;->isChromeDebugger:Z

    if-eqz v0, :cond_0

    const-string p1, "[REANIMATED]"

    const-string v0, "You can not use LayoutAnimation with enabled Chrome Debugger"

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    .line 251
    invoke-direct {p0}, Lcom/swmansion/reanimated/NativeProxy;->installJSIBindings()V

    .line 252
    iget-object v0, p0, Lcom/swmansion/reanimated/NativeProxy;->mContext:Ljava/lang/ref/WeakReference;

    .line 254
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 255
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 256
    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 260
    new-instance v2, Lcom/swmansion/reanimated/NativeProxy$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/swmansion/reanimated/NativeProxy$1;-><init>(Lcom/swmansion/reanimated/NativeProxy;Ljava/lang/ref/WeakReference;Lcom/swmansion/reanimated/layoutReanimation/LayoutAnimations;)V

    invoke-virtual {v0, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V

    return-void
.end method
