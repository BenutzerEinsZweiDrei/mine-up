.class public Lcom/swmansion/reanimated/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# instance fields
.field private final mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mUIThreadRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    new-instance v0, Lcom/swmansion/reanimated/Scheduler$1;

    invoke-direct {v0, p0}, Lcom/swmansion/reanimated/Scheduler$1;-><init>(Lcom/swmansion/reanimated/Scheduler;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mUIThreadRunnable:Ljava/lang/Runnable;

    .line 30
    invoke-direct {p0}, Lcom/swmansion/reanimated/Scheduler;->initHybrid()Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 31
    iput-object p1, p0, Lcom/swmansion/reanimated/Scheduler;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method static synthetic access$000(Lcom/swmansion/reanimated/Scheduler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/swmansion/reanimated/Scheduler;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/swmansion/reanimated/Scheduler;)Ljava/lang/Runnable;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/swmansion/reanimated/Scheduler;->mUIThreadRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private native initHybrid()Lcom/facebook/jni/HybridData;
.end method

.method private scheduleOnUI()V
    .locals 2

    .line 40
    new-instance v0, Lcom/swmansion/reanimated/Scheduler$2;

    iget-object v1, p0, Lcom/swmansion/reanimated/Scheduler;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 41
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExceptionHandler()Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/swmansion/reanimated/Scheduler$2;-><init>(Lcom/swmansion/reanimated/Scheduler;Lcom/facebook/react/bridge/NativeModuleCallExceptionHandler;)V

    .line 40
    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public deactivate()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/swmansion/reanimated/Scheduler;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public native triggerUI()V
.end method
