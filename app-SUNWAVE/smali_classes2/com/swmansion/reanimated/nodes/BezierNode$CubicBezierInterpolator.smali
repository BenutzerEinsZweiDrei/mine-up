.class Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;
.super Ljava/lang/Object;
.source "BezierNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/nodes/BezierNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CubicBezierInterpolator"
.end annotation


# instance fields
.field protected a:Landroid/graphics/PointF;

.field protected b:Landroid/graphics/PointF;

.field protected c:Landroid/graphics/PointF;

.field protected end:Landroid/graphics/PointF;

.field protected start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, p1}, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    .line 16
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    .line 19
    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    .line 20
    iput-object p2, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    return-void
.end method

.method private getBezierCoordinateX(F)F
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 57
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 58
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 59
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method private getXDerivate(F)F
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected getBezierCoordinateY(F)F
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 33
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->start:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 34
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 35
    iget-object v0, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr p1, v0

    return p1
.end method

.method public getInterpolation(F)F
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->getXForTime(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->getBezierCoordinateY(F)F

    move-result p1

    return p1
.end method

.method protected getXForTime(F)F
    .locals 7

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 42
    invoke-direct {p0, v1}, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->getBezierCoordinateX(F)F

    move-result v2

    sub-float/2addr v2, p1

    .line 43
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-direct {p0, v1}, Lcom/swmansion/reanimated/nodes/BezierNode$CubicBezierInterpolator;->getXDerivate(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
