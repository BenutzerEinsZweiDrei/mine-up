.class public Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;,
        Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;
    }
.end annotation


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field private static final CONTENT_OFFSET_LEFT:Ljava/lang/String; = "contentOffsetLeft"

.field private static final CONTENT_OFFSET_TOP:Ljava/lang/String; = "contentOffsetTop"

.field private static DEBUG_MODE:Z = false

.field public static final MOMENTUM_DELAY:J = 0x14L

.field public static final OVER_SCROLL_ALWAYS:Ljava/lang/String; = "always"

.field public static final OVER_SCROLL_NEVER:Ljava/lang/String; = "never"

.field private static final SCROLL_AWAY_PADDING_TOP:Ljava/lang/String; = "scrollAwayPaddingTop"

.field private static SMOOTH_SCROLL_DURATION:I = 0x0

.field public static final SNAP_ALIGNMENT_CENTER:I = 0x2

.field public static final SNAP_ALIGNMENT_DISABLED:I = 0x0

.field public static final SNAP_ALIGNMENT_END:I = 0x3

.field public static final SNAP_ALIGNMENT_START:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mSmoothScrollDurationInitialized:Z

.field private static final sScrollListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    const-string v0, "ReactHorizontalScrollView"

    sput-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    .line 62
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/Set;

    const/16 v1, 0xfa

    .line 68
    sput v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    .line 69
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->mSmoothScrollDurationInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 1

    .line 238
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static emitLayoutEvent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    .line 155
    invoke-interface {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onLayout(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->BEGIN_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    return-void
.end method

.method public static emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->END_DRAG:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method public static emitScrollEvent(Landroid/view/ViewGroup;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->SCROLL:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method private static emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;",
            "Lcom/facebook/react/views/scroll/ScrollEventType;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, p1, v0, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method private static emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;",
            "Lcom/facebook/react/views/scroll/ScrollEventType;",
            "FF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 108
    sget-boolean v3, Lcom/facebook/react/config/ReactFeatureFlags;->enableScrollEventThrottle:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;

    .line 109
    invoke-interface {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->getScrollEventThrottle()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x11

    .line 110
    invoke-interface {v3}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->getLastScrollDispatchTime()J

    move-result-wide v8

    sub-long v8, v1, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 115
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 121
    :cond_1
    sget-object v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;

    move-object/from16 v8, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 122
    invoke-interface {v5, v0, v8, v11, v12}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;->onScroll(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    goto :goto_0

    :cond_2
    move-object/from16 v8, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/bridge/ReactContext;

    .line 126
    invoke-static {v4}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v6

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    int-to-float v9, v5

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    int-to-float v10, v5

    .line 144
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 145
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    move-object/from16 v8, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 136
    invoke-static/range {v6 .. v16}, Lcom/facebook/react/views/scroll/ScrollEvent;->obtain(IILcom/facebook/react/views/scroll/ScrollEventType;FFFFIIII)Lcom/facebook/react/views/scroll/ScrollEvent;

    move-result-object v3

    .line 135
    invoke-interface {v4, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 148
    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;->setLastScrollDispatchTime(J)V

    :cond_3
    return-void
.end method

.method public static emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;II)V"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_BEGIN:Lcom/facebook/react/views/scroll/ScrollEventType;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;FF)V

    return-void
.end method

.method public static emitScrollMomentumEndEvent(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;)V"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/facebook/react/views/scroll/ScrollEventType;->MOMENTUM_END:Lcom/facebook/react/views/scroll/ScrollEventType;

    invoke-static {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;Lcom/facebook/react/views/scroll/ScrollEventType;)V

    return-void
.end method

.method public static forceUpdateState(Landroid/view/ViewGroup;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;)V"
        }
    .end annotation

    .line 442
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getScrollAwayPaddingTop()I

    move-result v1

    .line 444
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLastStateUpdateScroll()Landroid/graphics/Point;

    move-result-object v2

    .line 445
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 446
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 448
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLayoutDirection()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 454
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_0
    sub-int/2addr v0, v3

    .line 455
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    neg-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 460
    :goto_0
    sget-boolean v4, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v4, :cond_2

    .line 461
    sget-object v5, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    .line 464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 465
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 466
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v6, "updateFabricScrollState[%d] scrollX %d scrollY %d fabricScrollX"

    .line 461
    invoke-static/range {v5 .. v10}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    :cond_2
    check-cast p0, Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;

    .line 471
    invoke-interface {p0}, Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;->getFabricViewStateManager()Lcom/facebook/react/uimanager/FabricViewStateManager;

    move-result-object p0

    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$1;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$1;-><init>(III)V

    .line 472
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/FabricViewStateManager;->setState(Lcom/facebook/react/uimanager/FabricViewStateManager$StateUpdateCallback;)V

    return-void
.end method

.method public static getDefaultScrollAnimationDuration(Landroid/content/Context;)I
    .locals 1

    .line 186
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->mSmoothScrollDurationInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 187
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->mSmoothScrollDurationInitialized:Z

    .line 190
    :try_start_0
    new-instance v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;

    invoke-direct {v0, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$OverScrollerDurationGetter;->getScrollAnimationDuration()I

    move-result p0

    sput p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :catchall_0
    :cond_0
    sget p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->SMOOTH_SCROLL_DURATION:I

    return p0
.end method

.method public static getNextFlingStartValue(Landroid/view/ViewGroup;III)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;III)I"
        }
    .end annotation

    .line 382
    check-cast p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 383
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    sub-int v1, p2, p1

    mul-int/2addr p3, v1

    if-lez p3, :cond_1

    const/4 v0, 0x1

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getIsFinished()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getIsCanceled()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    move p1, p2

    :cond_3
    return p1
.end method

.method public static parseOverScrollMode(Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_3

    const-string v0, "auto"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "always"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "never"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 167
    :cond_2
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong overScrollMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseSnapToAlignment(Ljava/lang/String;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "start"

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "center"

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "end"

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x3

    return p0

    .line 181
    :cond_3
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong snap alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static predictFinalScrollPosition(Landroid/view/ViewGroup;IIII)Landroid/graphics/Point;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;IIII)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    move-object v0, p0

    .line 543
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    .line 547
    new-instance v13, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 548
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getDecelerationRate()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    invoke-virtual {v13, v3}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 552
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 553
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 554
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 556
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 557
    invoke-virtual {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getFinalAnimatedPositionScroll()Landroid/graphics/Point;

    move-result-object v1

    .line 561
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    move v6, p1

    .line 559
    invoke-static {p0, v4, v5, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v4

    .line 566
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    move/from16 v7, p2

    .line 564
    invoke-static {p0, v5, v1, v7}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->getNextFlingStartValue(Landroid/view/ViewGroup;III)I

    move-result v0

    div-int/lit8 v11, v2, 0x2

    div-int/lit8 v12, v3, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v2, v13

    move v3, v4

    move v4, v0

    move v5, p1

    move/from16 v6, p2

    move v7, v1

    move/from16 v8, p3

    move/from16 v10, p4

    .line 558
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 578
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v13}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v13}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static registerFlingAnimator(Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;)V"
        }
    .end annotation

    .line 505
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    .line 506
    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;

    invoke-direct {v1, p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$2;-><init>(Landroid/view/ViewGroup;)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static removeScrollListener(Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ScrollListener;)V
    .locals 1

    .line 242
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->sScrollListeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static smoothScrollTo(Landroid/view/ViewGroup;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;II)V"
        }
    .end annotation

    .line 345
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 346
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "smoothScrollTo[%d] x %d y %d"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->getFlingAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 352
    :cond_1
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->registerFlingAnimator(Landroid/view/ViewGroup;)V

    .line 355
    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v1

    .line 356
    invoke-virtual {v1, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setFinalAnimatedPositionScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 358
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    if-eq v1, p1, :cond_3

    .line 363
    invoke-interface {v0, v1, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->startFlingAnimator(II)V

    :cond_3
    if-eq v2, p2, :cond_4

    .line 366
    invoke-interface {v0, v2, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;->startFlingAnimator(II)V

    .line 369
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)Z

    return-void
.end method

.method public static updateFabricScrollState(Landroid/view/ViewGroup;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;)Z"
        }
    .end annotation

    .line 402
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;II)Z

    move-result p0

    return p0
.end method

.method public static updateFabricScrollState(Landroid/view/ViewGroup;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ">(TT;II)Z"
        }
    .end annotation

    .line 413
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->TAG:Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 419
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "updateFabricScrollState[%d] scrollX %d scrollY %d"

    .line 414
    invoke-static {v0, v4, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/react/uimanager/common/ViewUtil;->getUIManagerType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 426
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;

    invoke-interface {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;->getReactScrollViewScrollState()Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->getLastStateUpdateScroll()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Point;->equals(II)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    .line 432
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->setLastStateUpdateScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;

    .line 433
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->forceUpdateState(Landroid/view/ViewGroup;)V

    return v2
.end method

.method public static updateStateOnScrollChanged(Landroid/view/ViewGroup;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ":",
            "Lcom/facebook/react/uimanager/FabricViewStateManager$HasFabricViewStateManager;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollState;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasFlingAnimator;",
            ":",
            "Lcom/facebook/react/views/scroll/ReactScrollViewHelper$HasScrollEventThrottle;",
            ">(TT;FF)V"
        }
    .end annotation

    .line 496
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->updateFabricScrollState(Landroid/view/ViewGroup;)Z

    .line 497
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;FF)V

    return-void
.end method
