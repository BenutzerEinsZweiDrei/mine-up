.class public Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;
.super Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.source "ReanimatedNativeHierarchyManager.java"


# instance fields
.field private final cleanerCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private initOk:Z

.field private mPendingDeletionsForTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field private final toBeRemoved:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 6

    const-string v0, "accessFlags"

    .line 206
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    .line 198
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    .line 199
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 201
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    .line 208
    new-instance v1, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-direct {v1, p2, p0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V

    iput-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "reanimated"

    const-string p2, "unable to resolve super class of ReanimatedNativeHierarchyManager"

    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x17

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "mLayoutAnimator"

    .line 217
    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 218
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 220
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    if-lt v4, v1, :cond_1

    .line 223
    :try_start_1
    const-class v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 224
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 226
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    .line 225
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    .line 228
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 231
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 233
    :goto_2
    iput-boolean v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    .line 234
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_3
    :try_start_3
    const-string v3, "mPendingDeletionsForTag"

    .line 238
    invoke-virtual {p2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    if-lt v3, v1, :cond_2

    .line 244
    :try_start_4
    const-class v1, Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 247
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    .line 246
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    .line 249
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 252
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p2

    goto :goto_6

    :catch_7
    move-exception p2

    .line 254
    :goto_6
    iput-boolean v2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    .line 255
    invoke-virtual {p2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 258
    :goto_7
    iget-boolean p2, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    if-eqz p2, :cond_3

    .line 259
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->setLayoutAnimationEnabled(Z)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V

    .line 198
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    .line 199
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 201
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    return-void
.end method

.method private isLayoutAnimationDisabled()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->initOk:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    check-cast v0, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;

    invoke-virtual {v0}, Lcom/swmansion/reanimated/layoutReanimation/ReaLayoutAnimator;->isLayoutAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected declared-synchronized dropView(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 394
    :try_start_0
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->isLayoutAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 403
    iget-object v1, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 408
    :cond_2
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    .locals 17

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p4

    monitor-enter p0

    .line 305
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->isLayoutAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-super/range {p0 .. p4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 312
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup;

    .line 313
    invoke-virtual/range {p0 .. p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/facebook/react/uimanager/ViewGroupManager;
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-virtual {v11}, Lcom/facebook/react/uimanager/ViewGroupManager;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNSScreenStack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    invoke-super/range {p0 .. p4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 327
    :cond_1
    :try_start_3
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 329
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 330
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 331
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    :goto_1
    invoke-virtual {v11, v10}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {v11, v10}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v10, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {v11, v10}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v10, v0}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_5

    .line 344
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 345
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_4
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    .line 348
    array-length v13, v9

    const/4 v0, 0x0

    move v14, v0

    :goto_2
    if-ge v14, v13, :cond_5

    aget v0, v9, v14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v4
    :try_end_4
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 357
    :try_start_5
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->cleanerCallback:Ljava/util/HashMap;

    .line 359
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v6, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v5, v11

    move-object/from16 v16, v12

    move-object v12, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager$1;-><init>(Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;Ljava/util/ArrayList;Landroid/view/View;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;)V

    .line 358
    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v16, v12

    .line 354
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v16

    goto :goto_2

    .line 371
    :cond_5
    iget-object v0, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mPendingDeletionsForTag:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 372
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_6

    .line 374
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    const/4 v0, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 378
    invoke-super {v7, v8, v1, v2, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V

    .line 379
    iget-object v1, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 380
    iget-object v1, v7, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->toBeRemoved:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 382
    invoke-virtual {v11, v10}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v3

    invoke-virtual {v11, v10, v2, v3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_4

    .line 385
    :cond_7
    invoke-super {v7, v8, v0, v0, v9}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 316
    :try_start_6
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V

    .line 317
    invoke-super/range {p0 .. p4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public publicDropView(Landroid/view/View;)V
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->dropView(Landroid/view/View;)V

    return-void
.end method

.method public declared-synchronized updateLayout(IIIIII)V
    .locals 6

    monitor-enter p0

    .line 274
    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(IIIIII)V

    .line 275
    invoke-direct {p0}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->isLayoutAnimationDisabled()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 276
    monitor-exit p0

    return-void

    .line 279
    :cond_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    .line 280
    invoke-virtual {p0, p2}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p2

    .line 281
    invoke-virtual {p2}, Lcom/facebook/react/uimanager/ViewManager;->getName()Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p3, "RNSScreen"

    .line 284
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/swmansion/reanimated/layoutReanimation/ReanimatedNativeHierarchyManager;->mReaLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    float-to-int v2, p2

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    float-to-int v3, p2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 286
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    :try_start_2
    invoke-virtual {p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
