.class public Lcom/swmansion/reanimated/NativeMethodsHelper;
.super Ljava/lang/Object;
.source "NativeMethodsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBoundingBox(Landroid/view/View;[I)V
    .locals 4

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    invoke-static {p0, v0}, Lcom/swmansion/reanimated/NativeMethodsHelper;->mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 87
    iget p0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v1, 0x0

    aput p0, p1, v1

    .line 88
    iget p0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v1, 0x1

    aput p0, p1, v1

    .line 89
    iget p0, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v1, 0x2

    aput p0, p1, v1

    .line 90
    iget p0, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/4 v0, 0x3

    aput p0, p1, v0

    return-void
.end method

.method private static findScrollView(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)Lcom/facebook/react/views/scroll/ReactScrollView;
    .locals 2

    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/facebook/react/views/scroll/ReactScrollView;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static mapRectFromViewToWindowCoords(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 102
    :goto_0
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 103
    check-cast p0, Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 112
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static measure(Landroid/view/View;)[F
    .locals 6

    .line 17
    invoke-static {p0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 25
    invoke-static {v0, v3}, Lcom/swmansion/reanimated/NativeMethodsHelper;->computeBoundingBox(Landroid/view/View;[I)V

    .line 26
    aget v0, v3, v2

    const/4 v4, 0x1

    .line 27
    aget v5, v3, v4

    .line 28
    invoke-static {p0, v3}, Lcom/swmansion/reanimated/NativeMethodsHelper;->computeBoundingBox(Landroid/view/View;[I)V

    .line 29
    aget p0, v3, v2

    sub-int/2addr p0, v0

    aput p0, v3, v2

    .line 30
    aget p0, v3, v4

    sub-int/2addr p0, v5

    aput p0, v3, v4

    new-array p0, v1, [F

    const/4 v0, 0x0

    aput v0, p0, v4

    aput v0, p0, v2

    const/4 v0, 0x2

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, -0x2

    .line 34
    aget v2, v3, v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    new-array p0, v1, [F

    const v0, -0x36694bc8    # -1234567.0f

    aput v0, p0, v2

    return-object p0
.end method

.method public static scrollTo(Landroid/view/View;DDZ)V
    .locals 0

    .line 40
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 41
    invoke-static {p3, p4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 44
    instance-of p3, p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    instance-of p3, p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    if-eqz p3, :cond_1

    .line 48
    check-cast p0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-static {p0}, Lcom/swmansion/reanimated/NativeMethodsHelper;->findScrollView(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)Lcom/facebook/react/views/scroll/ReactScrollView;

    move-result-object p0

    .line 50
    :cond_1
    instance-of p3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-nez p3, :cond_2

    const-string p0, "REANIMATED"

    const-string p1, "NativeMethodsHelper: Unhandled scroll view type - allowed only {ReactScrollView, ReactHorizontalScrollView}"

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p3, 0x0

    :goto_0
    if-eqz p5, :cond_4

    if-eqz p3, :cond_3

    .line 60
    check-cast p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 62
    :cond_3
    check-cast p0, Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 66
    check-cast p0, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;->scrollTo(II)V

    goto :goto_1

    .line 68
    :cond_5
    check-cast p0, Lcom/facebook/react/views/scroll/ReactScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    :goto_1
    return-void
.end method
