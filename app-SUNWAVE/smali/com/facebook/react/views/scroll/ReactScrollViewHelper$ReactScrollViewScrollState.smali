.class public Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
.super Ljava/lang/Object;
.source "ReactScrollViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/scroll/ReactScrollViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReactScrollViewScrollState"
.end annotation


# instance fields
.field private mDecelerationRate:F

.field private final mFinalAnimatedPositionScroll:Landroid/graphics/Point;

.field private mIsCanceled:Z

.field private mIsFinished:Z

.field private final mLastStateUpdateScroll:Landroid/graphics/Point;

.field private final mLayoutDirection:I

.field private mScrollAwayPaddingTop:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mFinalAnimatedPositionScroll:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mScrollAwayPaddingTop:I

    .line 249
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mLastStateUpdateScroll:Landroid/graphics/Point;

    .line 250
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mIsCanceled:Z

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mIsFinished:Z

    const v0, 0x3f7c28f6    # 0.985f

    .line 252
    iput v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mDecelerationRate:F

    .line 255
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public getDecelerationRate()F
    .locals 1

    .line 325
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mDecelerationRate:F

    return v0
.end method

.method public getFinalAnimatedPositionScroll()Landroid/graphics/Point;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mFinalAnimatedPositionScroll:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIsCanceled()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mIsCanceled:Z

    return v0
.end method

.method public getIsFinished()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mIsFinished:Z

    return v0
.end method

.method public getLastStateUpdateScroll()Landroid/graphics/Point;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mLastStateUpdateScroll:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mLayoutDirection:I

    return v0
.end method

.method public getScrollAwayPaddingTop()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mScrollAwayPaddingTop:I

    return v0
.end method

.method public setDecelerationRate(F)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 0

    .line 330
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mDecelerationRate:F

    return-object p0
.end method

.method public setFinalAnimatedPositionScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mFinalAnimatedPositionScroll:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-object p0
.end method

.method public setIsCanceled(Z)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mIsCanceled:Z

    return-object p0
.end method

.method public setIsFinished(Z)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 0

    .line 319
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mIsFinished:Z

    return-object p0
.end method

.method public setLastStateUpdateScroll(II)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mLastStateUpdateScroll:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-object p0
.end method

.method public setScrollAwayPaddingTop(I)Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;
    .locals 0

    .line 297
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollViewHelper$ReactScrollViewScrollState;->mScrollAwayPaddingTop:I

    return-object p0
.end method
