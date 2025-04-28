.class public Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;
.super Ljava/lang/Object;
.source "AnimationsManager.java"

# interfaces
.implements Lcom/swmansion/reanimated/layoutReanimation/ViewHierarchyObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;
    }
.end annotation


# static fields
.field private static final LAYOUT_KEYS:[Ljava/lang/String;


# instance fields
.field private isCatalystInstanceDestroyed:Z

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mCleaningScheduled:Z

.field private mContext:Lcom/facebook/react/bridge/ReactContext;

.field private mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

.field private mParent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentViewManager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

.field private mScheduler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/reanimated/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private mStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mToRemove:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

.field private mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

.field private mViewForTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewManager:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "originX"

    const-string v1, "originY"

    const-string v2, "width"

    const-string v3, "height"

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->LAYOUT_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/UIImplementation;Lcom/facebook/react/uimanager/UIManagerModule;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCleaningScheduled:Z

    .line 49
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isCatalystInstanceDestroyed:Z

    .line 74
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 75
    iput-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 76
    iput-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    .line 79
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParentViewManager:Ljava/util/HashMap;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    .line 84
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isCatalystInstanceDestroyed:Z

    return-void
.end method

.method private static addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 433
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_0
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 435
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 436
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 437
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 438
    :cond_2
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 439
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 440
    :cond_3
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 441
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 442
    :cond_4
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 443
    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_5
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v0, :cond_6

    .line 445
    check-cast p2, Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_0

    .line 446
    :cond_6
    instance-of v0, p2, Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_7

    .line 447
    check-cast p2, Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_0
    return-void

    .line 449
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown type of animated value [Layout Aniamtions]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dfs(Landroid/view/View;Landroid/view/View;Ljava/util/HashSet;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 322
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v0, :cond_5

    .line 323
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 326
    :goto_0
    invoke-virtual {v3, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 327
    invoke-virtual {v3, v0, v5}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v3, :cond_3

    .line 330
    invoke-direct {p0, p1, v4, p3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->dfs(Landroid/view/View;Landroid/view/View;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v2, v3

    :cond_5
    if-nez v2, :cond_8

    .line 335
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 336
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 337
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 338
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 341
    :cond_6
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 342
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    .line 344
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    :cond_7
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParentViewManager:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->removeConfigForTag(I)V

    .line 354
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_8
    return v2
.end method

.method private findRoot(Landroid/view/View;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 299
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 300
    sget-object v3, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne v2, v3, :cond_0

    return-void

    .line 303
    :cond_0
    sget-object v3, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne v2, v3, :cond_1

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    if-eq v1, v0, :cond_3

    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private removeLeftovers()V
    .locals 5

    .line 232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 235
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_0

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v3, v2}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveView(I)Landroid/view/View;

    move-result-object v3

    .line 239
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    invoke-direct {p0, v3, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->findRoot(Landroid/view/View;Ljava/util/HashSet;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 249
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    invoke-direct {p0, v1, v1, v2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->dfs(Landroid/view/View;Landroid/view/View;Ljava/util/HashSet;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private scheduleCleaning()V
    .locals 3

    .line 281
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCleaningScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCleaningScheduled:Z

    .line 283
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 284
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    new-instance v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getReanimatedNativeHierarchyManager()Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    return-object v0
.end method

.method public isLayoutAnimationEnabled()Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->isLayoutAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$scheduleCleaning$0$com-swmansion-reanimated-layoutReanimation-AnimationsManager(Ljava/lang/ref/WeakReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCleaningScheduled:Z

    .line 287
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->removeLeftovers()V

    return-void
.end method

.method public notifyAboutEnd(IZ)V
    .locals 3

    if-nez p2, :cond_1

    .line 218
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 219
    sget-object v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Appearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne p2, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Layout:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    sget-object v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne p2, v0, :cond_1

    .line 224
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->scheduleCleaning()V

    :cond_1
    return-void
.end method

.method public notifyAboutProgress(Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 204
    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Appearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    .line 210
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    .line 211
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/facebook/react/uimanager/ViewManager;

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParentViewManager:Ljava/util/HashMap;

    .line 212
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/facebook/react/uimanager/ViewManager;

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    .line 213
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 208
    invoke-virtual/range {v1 .. v6}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setNewProps(Ljava/util/Map;Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/uimanager/ViewManager;Ljava/lang/Integer;)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isCatalystInstanceDestroyed:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    .line 90
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 91
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIImplementation:Lcom/facebook/react/uimanager/UIImplementation;

    .line 92
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mUIManager:Lcom/facebook/react/uimanager/UIManagerModule;

    .line 93
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    .line 94
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    .line 95
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    .line 96
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    .line 97
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    .line 98
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParentViewManager:Ljava/util/HashMap;

    .line 99
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public onViewCreate(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V
    .locals 2

    .line 130
    iget-boolean p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isCatalystInstanceDestroyed:Z

    if-eqz p2, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mScheduler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/swmansion/reanimated/Scheduler;

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2}, Lcom/swmansion/reanimated/Scheduler;->triggerUI()V

    .line 137
    :cond_1
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 138
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewForTag:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mViewManager:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->viewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParentViewManager:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->parentViewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mParent:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p3, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->parent:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 145
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object p3

    .line 146
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 148
    sget-object v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    .line 150
    invoke-virtual {p0, p3, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p1

    .line 151
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "entering"

    invoke-interface {p3, p2, v0, p1}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimationForTag(ILjava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    return-void
.end method

.method public onViewRemoval(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Ljava/lang/Runnable;)V
    .locals 2

    .line 104
    iget-boolean p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isCatalystInstanceDestroyed:Z

    if-eqz p2, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 108
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object p3

    .line 109
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    .line 111
    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object p4, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-eq v0, p4, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    sget-object p4, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p3, p1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p1

    .line 125
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string p4, "exiting"

    invoke-interface {p3, p2, p4, p1}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimationForTag(ILjava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 117
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    sget-object p4, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mToRemove:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->scheduleCleaning()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onViewUpdate(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V
    .locals 9

    .line 159
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isCatalystInstanceDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    invoke-virtual {p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toTargetMap()Ljava/util/HashMap;

    move-result-object p3

    .line 164
    invoke-virtual {p2}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->toCurrentMap()Ljava/util/HashMap;

    move-result-object p2

    .line 165
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-eqz v1, :cond_6

    .line 166
    sget-object v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Disappearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->ToRemove:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Inactive:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    if-ne v1, v2, :cond_1

    goto/16 :goto_2

    .line 174
    :cond_1
    sget-object v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Appearing:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4

    move v2, v3

    move v1, v4

    .line 176
    :goto_0
    sget-object v5, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 177
    sget-object v5, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->currentKeysToTransform:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 179
    sget-object v7, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    return-void

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v2, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;->Layout:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager$ViewState;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p0, p2, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p3, v3}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;

    move-result-object p2

    .line 195
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 196
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "layout"

    invoke-interface {p1, p2, v0, p3}, Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;->startAnimationForTag(ILjava/lang/String;Ljava/util/HashMap;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public prepareDataForAnimationWorklet(Ljava/util/HashMap;Z)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 364
    sget-object p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->targetKeysToTransform:Ljava/util/ArrayList;

    goto :goto_0

    .line 366
    :cond_0
    sget-object p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;->currentKeysToTransform:Ljava/util/ArrayList;

    .line 368
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 372
    :cond_1
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 373
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p2}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v1, "windowHeight"

    const-string v2, "windowWidth"

    if-eqz p2, :cond_2

    .line 375
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 376
    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 377
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    .line 378
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float p1, p2

    .line 379
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 381
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object v0
.end method

.method public printSubTree(Landroid/view/View;I)V
    .locals 5

    const-string v0, "rea"

    if-nez p2, :cond_0

    const-string v1, "----------------------"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 261
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    const-string v4, "+"

    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v3, " TAG:"

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " STATE:"

    .line 267
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " CLASS:"

    .line 269
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 274
    :goto_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 275
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->printSubTree(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setNativeMethods(Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mNativeMethodsHolder:Lcom/swmansion/reanimated/layoutReanimation/NativeMethodsHolder;

    return-void
.end method

.method public setNewProps(Ljava/util/Map;Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/uimanager/ViewManager;Ljava/lang/Integer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            "Lcom/facebook/react/uimanager/ViewManager;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    const-string v1, "originX"

    .line 398
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 399
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    :goto_0
    move v8, v2

    const-string v2, "originY"

    .line 402
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 403
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_1

    .line 404
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    :goto_1
    move v9, v3

    const-string v12, "width"

    .line 406
    invoke-interface {p1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 407
    invoke-interface {p1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_2

    .line 408
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    :goto_2
    move v10, v3

    const-string v13, "height"

    .line 410
    invoke-interface {p1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 411
    invoke-interface {p1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_3

    .line 412
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v3

    :goto_3
    move v11, v3

    .line 413
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v7

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-virtual/range {v3 .. v11}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->updateLayout(Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;IIFFFF)V

    .line 414
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-interface {p1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-interface {p1, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 423
    :cond_4
    new-instance v1, Lcom/facebook/react/bridge/JavaOnlyMap;

    invoke-direct {v1}, Lcom/facebook/react/bridge/JavaOnlyMap;-><init>()V

    .line 424
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 425
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->addProp(Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 428
    :cond_5
    new-instance v0, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v2, v1, v0}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    return-void
.end method

.method public setReanimatedNativeHierarchyManager(Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mReanimatedNativeHierarchyManager:Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    return-void
.end method

.method public setScheduler(Lcom/swmansion/reanimated/Scheduler;)V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->mScheduler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateLayout(Landroid/view/View;Lcom/facebook/react/uimanager/ViewManager;IIFFFF)V
    .locals 1

    .line 463
    invoke-static {p5}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p4

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 464
    invoke-static {p6}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p5

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    .line 465
    invoke-static {p7}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p6

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    .line 466
    invoke-static {p8}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p7

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p7

    const/high16 p8, 0x40000000    # 2.0f

    .line 483
    invoke-static {p6, p8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 484
    invoke-static {p7, p8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p8

    .line 482
    invoke-virtual {p1, v0, p8}, Landroid/view/View;->measure(II)V

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p8

    .line 497
    instance-of v0, p8, Lcom/facebook/react/uimanager/RootView;

    if-eqz v0, :cond_0

    .line 498
    invoke-interface {p8}, Landroid/view/ViewParent;->requestLayout()V

    .line 502
    :cond_0
    rem-int/lit8 p8, p3, 0xa

    const/4 v0, 0x1

    if-ne p8, v0, :cond_2

    .line 504
    instance-of p8, p2, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz p8, :cond_1

    .line 505
    check-cast p2, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz p2, :cond_3

    .line 513
    invoke-interface {p2}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result p2

    if-nez p2, :cond_3

    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 514
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 507
    :cond_1
    new-instance p1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to use view with tag "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " as a parent, but its Manager doesn\'t implement IViewManagerWithChildren"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-int/2addr p6, p4

    add-int/2addr p7, p5

    .line 517
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :cond_3
    :goto_0
    return-void
.end method
