.class public Lcom/swmansion/reanimated/NodesManager;
.super Ljava/lang/Object;
.source "NodesManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/events/EventDispatcherListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;,
        Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;
    }
.end annotation


# static fields
.field private static final ZERO:Ljava/lang/Double;


# instance fields
.field public currentFrameTimeMs:D

.field private final mAnimatedNodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/swmansion/reanimated/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

.field private final mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mChoreographerCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private mCustomEventHandler:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field protected final mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

.field private final mEventEmitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

.field private final mEventMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/swmansion/reanimated/nodes/EventNode;",
            ">;"
        }
    .end annotation
.end field

.field private mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/swmansion/reanimated/CopiedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeProxy:Lcom/swmansion/reanimated/NativeProxy;

.field private final mNoopNode:Lcom/swmansion/reanimated/nodes/NoopNode;

.field private mOperationsInBatch:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

.field private mTryRunBatchUpdatesSynchronously:Z

.field private final mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

.field private final mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

.field private mWantRunUpdates:Z

.field public nativeProps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uiProps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final updateContext:Lcom/swmansion/reanimated/UpdateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/swmansion/reanimated/NodesManager;->ZERO:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimationManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mFrameCallbacks:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->uiProps:Ljava/util/Set;

    .line 116
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->nativeProps:Ljava/util/Set;

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mOperationsInBatch:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/swmansion/reanimated/NodesManager;->mTryRunBatchUpdatesSynchronously:Z

    .line 158
    iput-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 159
    const-class v0, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    .line 160
    new-instance v1, Lcom/swmansion/reanimated/UpdateContext;

    invoke-direct {v1}, Lcom/swmansion/reanimated/UpdateContext;-><init>()V

    iput-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->updateContext:Lcom/swmansion/reanimated/UpdateContext;

    .line 161
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getUIImplementation()Lcom/facebook/react/uimanager/UIImplementation;

    move-result-object v1

    iput-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 162
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getDirectEventNamesResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    .line 163
    const-class v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {p1, v2}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iput-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mEventEmitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 165
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v2

    iput-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 166
    new-instance v2, Lcom/swmansion/reanimated/NodesManager$1;

    invoke-direct {v2, p0, p1}, Lcom/swmansion/reanimated/NodesManager$1;-><init>(Lcom/swmansion/reanimated/NodesManager;Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mChoreographerCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    .line 174
    new-instance v2, Lcom/swmansion/reanimated/nodes/NoopNode;

    invoke-direct {v2, p0}, Lcom/swmansion/reanimated/nodes/NoopNode;-><init>(Lcom/swmansion/reanimated/NodesManager;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mNoopNode:Lcom/swmansion/reanimated/nodes/NoopNode;

    .line 184
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addListener(Lcom/facebook/react/uimanager/events/EventDispatcherListener;)V

    .line 186
    new-instance v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-direct {v2, p1, v1, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/UIImplementation;Lcom/facebook/react/uimanager/UIManagerModule;)V

    iput-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimationManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/reanimated/NodesManager;J)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->onAnimationFrame(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/swmansion/reanimated/NodesManager;)Lcom/facebook/react/uimanager/UIImplementation;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/swmansion/reanimated/NodesManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    return-object p0
.end method

.method static synthetic access$200(Lcom/swmansion/reanimated/NodesManager;)Lcom/facebook/react/uimanager/UIManagerModule;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/swmansion/reanimated/NodesManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    return-object p0
.end method

.method private static addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 655
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 656
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 657
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 658
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 659
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 660
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 661
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 662
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 663
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 664
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 665
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_5
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_7

    .line 667
    instance-of v0, p2, Lcom/facebook/react/bridge/WritableArray;

    if-nez v0, :cond_6

    .line 668
    check-cast p2, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {p2}, Lcom/swmansion/reanimated/NodesManager;->copyReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 670
    :cond_6
    check-cast p2, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 672
    :cond_7
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_9

    .line 673
    instance-of v0, p2, Lcom/facebook/react/bridge/WritableMap;

    if-nez v0, :cond_8

    .line 674
    check-cast p2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {p2}, Lcom/swmansion/reanimated/NodesManager;->copyReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 676
    :cond_8
    check-cast p2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_0
    return-void

    .line 679
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown type of animated value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copyReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4

    .line 624
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 625
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 626
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v2

    .line 627
    sget-object v3, Lcom/swmansion/reanimated/NodesManager$3;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 647
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown type of ReadableArray"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 644
    :pswitch_0
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v2

    invoke-static {v2}, Lcom/swmansion/reanimated/NodesManager;->copyReadableArray(Lcom/facebook/react/bridge/ReadableArray;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_1

    .line 641
    :pswitch_1
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-static {v2}, Lcom/swmansion/reanimated/NodesManager;->copyReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_1

    .line 638
    :pswitch_2
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_1

    .line 635
    :pswitch_3
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    goto :goto_1

    .line 632
    :pswitch_4
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :pswitch_5
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static copyReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 618
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 619
    invoke-interface {v0, p0}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private handleEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p3    # Lcom/facebook/react/bridge/WritableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 529
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventHandler:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/EventNode;

    if-eqz v0, :cond_1

    .line 538
    invoke-virtual {v0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/EventNode;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_1
    return-void
.end method

.method private handleEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;->resolveCustomEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventHandler:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/events/Event;->dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/EventNode;

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/events/Event;->dispatch(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    :cond_1
    return-void
.end method

.method private onAnimationFrame(J)V
    .locals 5

    long-to-double p1, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p1, v0

    .line 262
    iput-wide p1, p0, Lcom/swmansion/reanimated/NodesManager;->currentFrameTimeMs:D

    .line 264
    :goto_0
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/CopiedEvent;

    .line 266
    invoke-virtual {p1}, Lcom/swmansion/reanimated/CopiedEvent;->getTargetTag()I

    move-result p2

    invoke-virtual {p1}, Lcom/swmansion/reanimated/CopiedEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/swmansion/reanimated/CopiedEvent;->getPayload()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lcom/swmansion/reanimated/NodesManager;->handleEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mFrameCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mFrameCallbacks:Ljava/util/List;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mFrameCallbacks:Ljava/util/List;

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_1

    .line 273
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;

    iget-wide v3, p0, Lcom/swmansion/reanimated/NodesManager;->currentFrameTimeMs:D

    invoke-interface {v2, v3, v4}, Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;->onAnimationFrame(D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_1
    iget-boolean p1, p0, Lcom/swmansion/reanimated/NodesManager;->mWantRunUpdates:Z

    if-eqz p1, :cond_2

    .line 278
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->updateContext:Lcom/swmansion/reanimated/UpdateContext;

    invoke-static {p1}, Lcom/swmansion/reanimated/nodes/Node;->runUpdates(Lcom/swmansion/reanimated/UpdateContext;)V

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/swmansion/reanimated/NodesManager;->performOperations()V

    .line 282
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    iput-boolean p2, p0, Lcom/swmansion/reanimated/NodesManager;->mWantRunUpdates:Z

    .line 285
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mFrameCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NodesManager;->startUpdatingOnAnimationFrame()V

    :cond_4
    return-void
.end method

.method private performOperations()V
    .locals 10

    .line 217
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mOperationsInBatch:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v6, p0, Lcom/swmansion/reanimated/NodesManager;->mOperationsInBatch:Ljava/util/Queue;

    .line 219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mOperationsInBatch:Ljava/util/Queue;

    .line 220
    iget-boolean v0, p0, Lcom/swmansion/reanimated/NodesManager;->mTryRunBatchUpdatesSynchronously:Z

    const/4 v1, 0x0

    .line 221
    iput-boolean v1, p0, Lcom/swmansion/reanimated/NodesManager;->mTryRunBatchUpdatesSynchronously:Z

    .line 222
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 223
    iget-object v8, p0, Lcom/swmansion/reanimated/NodesManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    new-instance v9, Lcom/swmansion/reanimated/NodesManager$2;

    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 224
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getExceptionHandler()Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    move-result-object v3

    move-object v1, v9

    move-object v2, p0

    move v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/swmansion/reanimated/NodesManager$2;-><init>(Lcom/swmansion/reanimated/NodesManager;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;ZLjava/util/concurrent/Semaphore;Ljava/util/Queue;)V

    .line 223
    invoke-virtual {v8, v9}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_0

    .line 251
    :catch_0
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void
.end method

.method private stopUpdatingOnAnimationFrame()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mChoreographerCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachEvent(ILjava/lang/String;I)V
    .locals 1

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object p2, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/swmansion/reanimated/nodes/EventNode;

    if-eqz p2, :cond_1

    .line 454
    iget-object p3, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 459
    iget-object p3, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 455
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    const-string p2, "Event handler already set for the given view and event type"

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 451
    :cond_1
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event node "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " does not exists"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public configureProps(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 468
    iput-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->uiProps:Ljava/util/Set;

    .line 469
    iput-object p2, p0, Lcom/swmansion/reanimated/NodesManager;->nativeProps:Ljava/util/Set;

    return-void
.end method

.method public connectNodeToView(II)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz v0, :cond_1

    .line 418
    instance-of p1, v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    if-eqz p1, :cond_0

    .line 422
    check-cast v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    invoke-virtual {v0, p2}, Lcom/swmansion/reanimated/nodes/PropsNode;->connectToView(I)V

    return-void

    .line 419
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animated node connected to view should beof type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animated node with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public connectNodes(II)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/nodes/Node;

    .line 394
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1, v0}, Lcom/swmansion/reanimated/nodes/Node;->addChild(Lcom/swmansion/reanimated/nodes/Node;)V

    return-void

    .line 396
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animated node with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exists"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createNode(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "type"

    .line 334
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "props"

    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    new-instance v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/swmansion/reanimated/nodes/PropsNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;Lcom/facebook/react/uimanager/UIImplementation;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "style"

    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v0, Lcom/swmansion/reanimated/nodes/StyleNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/StyleNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "transform"

    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 341
    new-instance v0, Lcom/swmansion/reanimated/nodes/TransformNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/TransformNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "value"

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 343
    new-instance v0, Lcom/swmansion/reanimated/nodes/ValueNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ValueNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "block"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    new-instance v0, Lcom/swmansion/reanimated/nodes/BlockNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/BlockNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "cond"

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 347
    new-instance v0, Lcom/swmansion/reanimated/nodes/CondNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/CondNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "op"

    .line 348
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 349
    new-instance v0, Lcom/swmansion/reanimated/nodes/OperatorNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/OperatorNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "set"

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 351
    new-instance v0, Lcom/swmansion/reanimated/nodes/SetNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/SetNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "debug"

    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 353
    new-instance v0, Lcom/swmansion/reanimated/nodes/DebugNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/DebugNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "clock"

    .line 354
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 355
    new-instance v0, Lcom/swmansion/reanimated/nodes/ClockNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ClockNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "clockStart"

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 357
    new-instance v0, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStartNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStartNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "clockStop"

    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 359
    new-instance v0, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStopNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockStopNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "clockTest"

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 361
    new-instance v0, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockTestNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ClockOpNode$ClockTestNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "call"

    .line 362
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 363
    new-instance v0, Lcom/swmansion/reanimated/nodes/JSCallNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/JSCallNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_d
    const-string v1, "bezier"

    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 365
    new-instance v0, Lcom/swmansion/reanimated/nodes/BezierNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/BezierNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_e
    const-string v1, "event"

    .line 366
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 367
    new-instance v0, Lcom/swmansion/reanimated/nodes/EventNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/EventNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_f
    const-string v1, "always"

    .line 368
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 369
    new-instance v0, Lcom/swmansion/reanimated/nodes/AlwaysNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/AlwaysNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_10
    const-string v1, "concat"

    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 371
    new-instance v0, Lcom/swmansion/reanimated/nodes/ConcatNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ConcatNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_11
    const-string v1, "param"

    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 373
    new-instance v0, Lcom/swmansion/reanimated/nodes/ParamNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/ParamNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_12
    const-string v1, "func"

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 375
    new-instance v0, Lcom/swmansion/reanimated/nodes/FunctionNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/FunctionNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    goto :goto_0

    :cond_13
    const-string v1, "callfunc"

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 377
    new-instance v0, Lcom/swmansion/reanimated/nodes/CallFuncNode;

    invoke-direct {v0, p1, p2, p0}, Lcom/swmansion/reanimated/nodes/CallFuncNode;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    .line 381
    :goto_0
    iget-object p2, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 379
    :cond_14
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported node type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_15
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animated node with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public detachEvent(ILjava/lang/String;I)V
    .locals 0

    .line 463
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 464
    iget-object p2, p0, Lcom/swmansion/reanimated/NodesManager;->mEventMapping:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public disconnectNodeFromView(II)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz v0, :cond_1

    .line 431
    instance-of p1, v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    if-eqz p1, :cond_0

    .line 435
    check-cast v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    invoke-virtual {v0, p2}, Lcom/swmansion/reanimated/nodes/PropsNode;->disconnectFromView(I)V

    return-void

    .line 432
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Animated node connected to view should beof type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/swmansion/reanimated/nodes/PropsNode;

    .line 433
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animated node with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public disconnectNodes(II)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/nodes/Node;

    .line 404
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1, v0}, Lcom/swmansion/reanimated/nodes/Node;->removeChild(Lcom/swmansion/reanimated/nodes/Node;)V

    return-void

    .line 406
    :cond_0
    new-instance p1, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animated node with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " does not exists"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dropNode(I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Lcom/swmansion/reanimated/nodes/Node;->onDrop()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public enqueueUpdateViewOnNativeThread(ILcom/facebook/react/bridge/WritableMap;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    .line 441
    iput-boolean p3, p0, Lcom/swmansion/reanimated/NodesManager;->mTryRunBatchUpdatesSynchronously:Z

    .line 443
    :cond_0
    iget-object p3, p0, Lcom/swmansion/reanimated/NodesManager;->mOperationsInBatch:Ljava/util/Queue;

    new-instance v0, Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/swmansion/reanimated/NodesManager$NativeUpdateOperation;-><init>(Lcom/swmansion/reanimated/NodesManager;ILcom/facebook/react/bridge/WritableMap;)V

    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/reanimated/nodes/Node;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/nodes/Node;

    if-nez v0, :cond_2

    .line 311
    const-class v0, Lcom/swmansion/reanimated/nodes/Node;

    if-eq p2, v0, :cond_1

    const-class v0, Lcom/swmansion/reanimated/nodes/ValueNode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested node with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mNoopNode:Lcom/swmansion/reanimated/nodes/NoopNode;

    return-object p1

    .line 317
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 320
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Node with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is of incompatible type "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", requested type was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimationManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    return-object v0
.end method

.method public getEventNameResolver()Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    return-object v0
.end method

.method public getNativeProxy()Lcom/swmansion/reanimated/NativeProxy;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mNativeProxy:Lcom/swmansion/reanimated/NativeProxy;

    return-object v0
.end method

.method public getNodeValue(I)Ljava/lang/Object;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 300
    :cond_0
    sget-object p1, Lcom/swmansion/reanimated/NodesManager;->ZERO:Ljava/lang/Double;

    return-object p1
.end method

.method public getValue(ILcom/facebook/react/bridge/Callback;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {p1}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public initWithContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 140
    new-instance v0, Lcom/swmansion/reanimated/NativeProxy;

    invoke-direct {v0, p1}, Lcom/swmansion/reanimated/NativeProxy;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mNativeProxy:Lcom/swmansion/reanimated/NativeProxy;

    .line 141
    iget-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimationManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-virtual {p0}, Lcom/swmansion/reanimated/NodesManager;->getNativeProxy()Lcom/swmansion/reanimated/NativeProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NativeProxy;->getScheduler()Lcom/swmansion/reanimated/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setScheduler(Lcom/swmansion/reanimated/Scheduler;)V

    return-void
.end method

.method public measure(I)[F
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-static {p1}, Lcom/swmansion/reanimated/NativeMethodsHelper;->measure(Landroid/view/View;)[F

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    const/4 p1, 0x0

    new-array p1, p1, [F

    return-object p1
.end method

.method public obtainProp(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object p1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: unknown propName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currently supported: opacity, zIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opacity"

    .line 607
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "zIndex"

    .line 610
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 612
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimationManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->onCatalystInstanceDestroy()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mNativeProxy:Lcom/swmansion/reanimated/NativeProxy;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/swmansion/reanimated/NativeProxy;->onCatalystInstanceDestroy()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mNativeProxy:Lcom/swmansion/reanimated/NativeProxy;

    :cond_1
    return-void
.end method

.method public onEventDispatch(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 3

    .line 490
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-direct {p0, p1}, Lcom/swmansion/reanimated/NodesManager;->handleEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 492
    invoke-direct {p0}, Lcom/swmansion/reanimated/NodesManager;->performOperations()V

    goto :goto_1

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventNamesResolver:Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule$CustomEventNamesResolver;->resolveCustomEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/events/Event;->getViewTag()I

    move-result v1

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventHandler:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/swmansion/reanimated/NodesManager;->mNativeProxy:Lcom/swmansion/reanimated/NativeProxy;

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {v1, v0}, Lcom/swmansion/reanimated/NativeProxy;->isAnyHandlerWaitingForEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mEventQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/swmansion/reanimated/CopiedEvent;

    invoke-direct {v1, p1}, Lcom/swmansion/reanimated/CopiedEvent;-><init>(Lcom/facebook/react/uimanager/events/Event;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NodesManager;->startUpdatingOnAnimationFrame()V

    :goto_1
    return-void
.end method

.method public onHostPause()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/swmansion/reanimated/NodesManager;->stopUpdatingOnAnimationFrame()V

    .line 192
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NodesManager;->startUpdatingOnAnimationFrame()V

    :cond_0
    return-void
.end method

.method public postOnAnimation(Lcom/swmansion/reanimated/NodesManager$OnAnimationFrame;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mFrameCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NodesManager;->startUpdatingOnAnimationFrame()V

    return-void
.end method

.method public postRunUpdatesAfterAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Lcom/swmansion/reanimated/NodesManager;->mWantRunUpdates:Z

    .line 478
    invoke-virtual {p0}, Lcom/swmansion/reanimated/NodesManager;->startUpdatingOnAnimationFrame()V

    return-void
.end method

.method public registerEventHandler(Lcom/facebook/react/uimanager/events/RCTEventEmitter;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/swmansion/reanimated/NodesManager;->mCustomEventHandler:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-void
.end method

.method public scrollTo(IDDZ)V
    .locals 7

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 77
    invoke-static/range {v1 .. v6}, Lcom/swmansion/reanimated/NativeMethodsHelper;->scrollTo(Landroid/view/View;DDZ)V

    return-void

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mEventEmitter:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(ILjava/lang/Double;)V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mAnimatedNodes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/nodes/Node;

    if-eqz p1, :cond_0

    .line 558
    check-cast p1, Lcom/swmansion/reanimated/nodes/ValueNode;

    invoke-virtual {p1, p2}, Lcom/swmansion/reanimated/nodes/ValueNode;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startUpdatingOnAnimationFrame()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mCallbackPosted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/swmansion/reanimated/NodesManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->NATIVE_ANIMATED_MODULE:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/swmansion/reanimated/NodesManager;->mChoreographerCallback:Lcom/facebook/react/uimanager/GuardedFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public updateProps(ILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 567
    new-instance v0, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 568
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 569
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 571
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 572
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 573
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 574
    iget-object v9, p0, Lcom/swmansion/reanimated/NodesManager;->uiProps:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 576
    invoke-static {v0, v8, v6}, Lcom/swmansion/reanimated/NodesManager;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v7

    goto :goto_0

    .line 577
    :cond_0
    iget-object v9, p0, Lcom/swmansion/reanimated/NodesManager;->nativeProps:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 579
    invoke-static {v2, v8, v6}, Lcom/swmansion/reanimated/NodesManager;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    move v4, v7

    goto :goto_0

    .line 582
    :cond_1
    invoke-static {v1, v8, v6}, Lcom/swmansion/reanimated/NodesManager;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    move v5, v7

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    if-eqz v3, :cond_3

    .line 588
    iget-object p2, p0, Lcom/swmansion/reanimated/NodesManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    new-instance v3, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v3, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p2, p1, v3}, Lcom/facebook/react/uimanager/UIImplementation;->synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    :cond_3
    if-eqz v4, :cond_4

    .line 592
    invoke-virtual {p0, p1, v2, v7}, Lcom/swmansion/reanimated/NodesManager;->enqueueUpdateViewOnNativeThread(ILcom/facebook/react/bridge/WritableMap;Z)V

    :cond_4
    if-eqz v5, :cond_5

    .line 595
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v0, "viewTag"

    .line 596
    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "props"

    .line 597
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "onReanimatedPropsChange"

    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/swmansion/reanimated/NodesManager;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_5
    return-void
.end method
