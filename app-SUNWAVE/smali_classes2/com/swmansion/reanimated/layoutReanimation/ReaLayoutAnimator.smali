.class Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;
.super Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;
.source "ReanimatedNativeHierarchyManager.java"


# instance fields
.field private mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

.field private mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private volatile mInitialized:Z

.field private mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/uimanager/NativeViewHierarchyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mInitialized:Z

    .line 32
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    .line 37
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 38
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private dfs(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 5

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 168
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    .line 169
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {v0, p1, v2}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    .line 170
    iget-object v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Landroid/view/View;)V

    .line 170
    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->onViewRemoval(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    .line 183
    :goto_0
    instance-of v0, v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v0, :cond_1

    .line 184
    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    const/4 v0, 0x0

    .line 185
    :goto_1
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 186
    invoke-virtual {v1, v2, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->dfs(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$deleteView$0(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V
    .locals 0

    .line 152
    invoke-interface {p0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;->onAnimationEnd()V

    return-void
.end method

.method static synthetic lambda$dfs$1(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Landroid/view/View;)V
    .locals 0

    .line 175
    check-cast p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    .line 177
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->publicDropView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public applyLayoutUpdate(Landroid/view/View;IIII)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->isLayoutAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-super/range {p0 .. p5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V

    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 82
    invoke-virtual {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->maybeInit()V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {v0, p1, v1}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 96
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 97
    new-instance p2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {p2, p1, p3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    .line 98
    iget-object p3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-virtual {p3, p1, v0, p2}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->onViewUpdate(Landroid/view/View;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V

    goto :goto_1

    :cond_2
    :goto_0
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 87
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    .line 89
    iget-object p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    new-instance p4, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object p5, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {p5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {p4, p1, p5}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    .line 89
    invoke-virtual {p2, p1, p3, p4}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->onViewCreate(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V
    .locals 6

    .line 111
    invoke-virtual {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->isLayoutAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 116
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    .line 119
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1
    :try_end_0
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    invoke-virtual {v1}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RNSScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 136
    :try_start_1
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RNSScreenStack"

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    return-void

    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    .line 140
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    return-void

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->maybeInit()V

    .line 150
    new-instance v2, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;

    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;

    invoke-direct {v2, p1, v3}, Lcom/swmansion/reanimated/layoutReanimation/Snapshot;-><init>(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    .line 151
    iget-object v3, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v5, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v5, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    .line 151
    invoke-virtual {v3, p1, v4, v2, v5}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->onViewRemoval(Landroid/view/View;Landroid/view/ViewGroup;Lcom/swmansion/reanimated/layoutReanimation/Snapshot;Ljava/lang/Runnable;)V

    .line 153
    instance-of p2, v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz p2, :cond_2

    .line 154
    check-cast v1, Lcom/facebook/react/uimanager/ViewGroupManager;

    const/4 p2, 0x0

    .line 155
    :goto_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 156
    invoke-virtual {v1, v2, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->dfs(Landroid/view/View;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_1
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    .line 123
    invoke-super {p0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    return-void
.end method

.method public isLayoutAnimationEnabled()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->maybeInit()V

    .line 193
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->isLayoutAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public maybeInit()V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mInitialized:Z

    .line 44
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/swmansion/reanimated/ReanimatedModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/reanimated/ReanimatedModule;

    .line 45
    invoke-virtual {v0}, Lcom/swmansion/reanimated/ReanimatedModule;->getNodesManager()Lcom/swmansion/reanimated/NodesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swmansion/reanimated/NodesManager;->getAnimationsManager()Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mAnimationsManager:Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;

    .line 46
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->mWeakNativeViewHierarchyManage:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;

    .line 46
    invoke-virtual {v0, v1}, Lcom/swmansion/reanimated/layoutReanimation/AnimationsManager;->setReanimatedNativeHierarchyManager(Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;)V

    :cond_0
    return-void
.end method

.method public shouldAnimateLayout(Landroid/view/View;)Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->isLayoutAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
