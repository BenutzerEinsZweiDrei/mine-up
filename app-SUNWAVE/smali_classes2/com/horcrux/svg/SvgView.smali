.class public Lcom/horcrux/svg/SvgView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SvgView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactCompoundView;
.implements Lcom/facebook/react/uimanager/ReactCompoundViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/SvgView$Events;
    }
.end annotation


# instance fields
.field private mAlign:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mDefinedBrushes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/Brush;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedClipPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedMarkers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedMasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefinedTemplates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/horcrux/svg/VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field final mInvViewBoxMatrix:Landroid/graphics/Matrix;

.field private mInvertible:Z

.field private mMeetOrSlice:I

.field private mMinX:F

.field private mMinY:F

.field private mRendered:Z

.field private mResponsible:Z

.field private final mScale:F

.field mTintColor:I

.field private mVbHeight:F

.field private mVbWidth:F

.field private mbbHeight:Lcom/horcrux/svg/SVGLength;

.field private mbbWidth:Lcom/horcrux/svg/SVGLength;

.field private toDataUrlTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 135
    iput-boolean p1, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedClipPaths:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedTemplates:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMarkers:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMasks:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedBrushes:Ljava/util/Map;

    .line 153
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mInvertible:Z

    .line 155
    iput-boolean p1, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 156
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mTintColor:I

    .line 73
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    return-void
.end method

.method private clearChildCache()V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 168
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_1

    .line 170
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    .line 171
    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualView;->clearChildCache()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private drawOutput()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 250
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 251
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 252
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_1

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4045000000000000L    # 42.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    float-to-int v0, v1

    float-to-int v1, v2

    .line 256
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getViewBox()Landroid/graphics/RectF;
    .locals 7

    .line 321
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/horcrux/svg/SvgView;->mMinX:F

    iget v2, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/horcrux/svg/SvgView;->mMinY:F

    mul-float v5, v4, v2

    iget v6, p0, Lcom/horcrux/svg/SvgView;->mVbWidth:F

    add-float/2addr v1, v6

    mul-float/2addr v1, v2

    iget v6, p0, Lcom/horcrux/svg/SvgView;->mVbHeight:F

    add-float/2addr v4, v6

    mul-float/2addr v4, v2

    invoke-direct {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private hitTest(FF)I
    .locals 6

    .line 369
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mInvertible:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 374
    iget-object v2, p0, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 376
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, -0x1

    move v3, v1

    :goto_0
    if-ltz v2, :cond_4

    .line 379
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 380
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_1

    .line 381
    check-cast v4, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v4, v0}, Lcom/horcrux/svg/VirtualView;->hitTest([F)I

    move-result v3

    goto :goto_1

    .line 382
    :cond_1
    instance-of v5, v4, Lcom/horcrux/svg/SvgView;

    if-eqz v5, :cond_2

    .line 383
    check-cast v4, Lcom/horcrux/svg/SvgView;

    invoke-direct {v4, p1, p2}, Lcom/horcrux/svg/SvgView;->hitTest(FF)I

    move-result v3

    :cond_2
    :goto_1
    if-eq v3, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ne v3, v1, :cond_5

    .line 390
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getId()I

    move-result v3

    :cond_5
    return v3

    .line 370
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getId()I

    move-result p1

    return p1
.end method


# virtual methods
.method defineBrush(Lcom/horcrux/svg/Brush;Ljava/lang/String;)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedBrushes:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method defineClipPath(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedClipPaths:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method defineMarker(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMarkers:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method defineMask(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMasks:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedTemplates:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method declared-synchronized drawChildren(Landroid/graphics/Canvas;)V
    .locals 14

    monitor-enter p0

    const/4 v0, 0x1

    .line 270
    :try_start_0
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 271
    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    .line 272
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    iget-object v2, p0, Lcom/horcrux/svg/SvgView;->mAlign:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->getViewBox()Landroid/graphics/RectF;

    move-result-object v1

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 277
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v4, :cond_0

    .line 279
    iget-object v5, p0, Lcom/horcrux/svg/SvgView;->mbbWidth:Lcom/horcrux/svg/SVGLength;

    float-to-double v6, v2

    const-wide/16 v8, 0x0

    iget v2, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    float-to-double v10, v2

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    invoke-static/range {v5 .. v13}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v5

    double-to-float v2, v5

    .line 280
    iget-object v5, p0, Lcom/horcrux/svg/SvgView;->mbbHeight:Lcom/horcrux/svg/SVGLength;

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    iget v3, p0, Lcom/horcrux/svg/SvgView;->mScale:F

    float-to-double v10, v3

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    invoke-static/range {v5 .. v13}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v5

    double-to-float v3, v5

    .line 282
    :cond_0
    new-instance v5, Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 286
    :cond_1
    iget-object v2, p0, Lcom/horcrux/svg/SvgView;->mAlign:Ljava/lang/String;

    iget v3, p0, Lcom/horcrux/svg/SvgView;->mMeetOrSlice:I

    invoke-static {v1, v5, v2, v3}, Lcom/horcrux/svg/ViewBox;->getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/horcrux/svg/SvgView;->mInvViewBoxMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/horcrux/svg/SvgView;->mInvertible:Z

    .line 288
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 291
    :cond_2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/16 v3, 0x181

    .line 293
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 295
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v3, 0x0

    move v4, v3

    .line 298
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 299
    invoke-virtual {p0, v4}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 300
    instance-of v6, v5, Lcom/horcrux/svg/VirtualView;

    if-eqz v6, :cond_3

    .line 301
    check-cast v5, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v5}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 306
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/SvgView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 307
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_5

    .line 308
    check-cast v4, Lcom/horcrux/svg/VirtualView;

    .line 309
    invoke-virtual {v4, p1, v1}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 310
    invoke-virtual {v4, p1, v2, v6}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 311
    invoke-virtual {v4, p1, v5}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    .line 313
    invoke-virtual {v4}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    if-nez v4, :cond_5

    .line 314
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 318
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method enableTouchEvents()V
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 360
    iput-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    :cond_0
    return-void
.end method

.method getCanvasBounds()Landroid/graphics/Rect;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDefinedBrush(Ljava/lang/String;)Lcom/horcrux/svg/Brush;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedBrushes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/horcrux/svg/Brush;

    return-object p1
.end method

.method getDefinedClipPath(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedClipPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/horcrux/svg/VirtualView;

    return-object p1
.end method

.method getDefinedMarker(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMarkers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/horcrux/svg/VirtualView;

    return-object p1
.end method

.method getDefinedMask(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedMasks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/horcrux/svg/VirtualView;

    return-object p1
.end method

.method getDefinedTemplate(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mDefinedTemplates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/horcrux/svg/VirtualView;

    return-object p1
.end method

.method public interceptsTouchEvent(FF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public invalidate()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 85
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v1, :cond_1

    .line 87
    iget-boolean v1, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 90
    iput-boolean v1, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    .line 91
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method isResponsible()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mResponsible:Z

    return v0
.end method

.method notRendered()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/horcrux/svg/SvgView;->mRendered:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v0, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 107
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->drawOutput()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/horcrux/svg/SvgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    iget-object p1, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 112
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 113
    iput-object v2, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/react/views/view/ReactViewGroup;->onSizeChanged(IIII)V

    .line 127
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    return-void
.end method

.method public reactTagForTouch(FF)I
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/SvgView;->hitTest(FF)I

    move-result p1

    return p1
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "align"
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->mAlign:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 238
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setBbHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bbHeight"
    .end annotation

    .line 229
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->mbbHeight:Lcom/horcrux/svg/SVGLength;

    .line 230
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 231
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setBbWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "bbWidth"
    .end annotation

    .line 222
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->mbbWidth:Lcom/horcrux/svg/SVGLength;

    .line 223
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 224
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;->setId(I)V

    .line 79
    invoke-static {p1, p0}, Lcom/horcrux/svg/SvgViewManager;->setSvgView(ILcom/horcrux/svg/SvgView;)V

    return-void
.end method

.method public setMeetOrSlice(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "meetOrSlice"
    .end annotation

    .line 243
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mMeetOrSlice:I

    .line 244
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 245
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setMinX(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minX"
    .end annotation

    .line 194
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mMinX:F

    .line 195
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 196
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setMinY(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minY"
    .end annotation

    .line 201
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mMinY:F

    .line 202
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 203
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setTintColor(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .param p1    # Lcom/facebook/react/bridge/Dynamic;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "tintColor"
    .end annotation

    .line 178
    sget-object v0, Lcom/horcrux/svg/SvgView$1;->$SwitchMap$com$facebook$react$bridge$ReadableType:[I

    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReadableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mTintColor:I

    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p1

    iput p1, p0, Lcom/horcrux/svg/SvgView;->mTintColor:I

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asMap()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/react/bridge/ColorPropConverter;->getColor(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/horcrux/svg/SvgView;->mTintColor:I

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 189
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method setToDataUrlTask(Ljava/lang/Runnable;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/horcrux/svg/SvgView;->toDataUrlTask:Ljava/lang/Runnable;

    return-void
.end method

.method public setVbHeight(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbHeight"
    .end annotation

    .line 215
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mVbHeight:F

    .line 216
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 217
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method public setVbWidth(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "vbWidth"
    .end annotation

    .line 208
    iput p1, p0, Lcom/horcrux/svg/SvgView;->mVbWidth:F

    .line 209
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 210
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    return-void
.end method

.method toDataURL()Ljava/lang/String;
    .locals 4

    .line 326
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getWidth()I

    move-result v0

    .line 327
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 325
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 331
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 332
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 333
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 334
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 335
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 336
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 338
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toDataURL(II)Ljava/lang/String;
    .locals 2

    .line 342
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 347
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 348
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 349
    invoke-direct {p0}, Lcom/horcrux/svg/SvgView;->clearChildCache()V

    .line 350
    invoke-virtual {p0}, Lcom/horcrux/svg/SvgView;->invalidate()V

    .line 351
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 352
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 354
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 355
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
