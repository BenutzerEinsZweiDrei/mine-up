.class public Lcom/beefe/picker/view/LoopView;
.super Landroid/view/View;
.source "LoopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beefe/picker/view/LoopView$ACTION;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private firstLineY:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private halfCircumference:I

.field handler:Landroid/os/Handler;

.field initPosition:I

.field isLoop:Z

.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemsVisible:I

.field lineSpacingMultiplier:F

.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mOffset:I

.field maxTextHeight:I

.field private measuredHeight:I

.field onItemSelectedListener:Lcom/beefe/picker/view/OnItemSelectedListener;

.field private paintCenterText:Landroid/graphics/Paint;

.field private paintIndicator:Landroid/graphics/Paint;

.field private paintOuterText:Landroid/graphics/Paint;

.field private preCurrentIndex:I

.field private previousY:F

.field private radius:I

.field private scaleX:F

.field private secondLineY:I

.field private selectedIndex:I

.field private selectedItem:Ljava/lang/String;

.field private startTime:J

.field private tempRect:Landroid/graphics/Rect;

.field private textEllipsisLen:I

.field private textSize:I

.field totalScrollY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3f866666    # 1.05f

    .line 32
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->scaleX:F

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x7

    .line 70
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->textEllipsisLen:I

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/beefe/picker/view/LoopView;->startTime:J

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 91
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/LoopView;->initLoopView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x3f866666    # 1.05f

    .line 32
    iput p2, p0, Lcom/beefe/picker/view/LoopView;->scaleX:F

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/beefe/picker/view/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p2, 0x7

    .line 70
    iput p2, p0, Lcom/beefe/picker/view/LoopView;->textEllipsisLen:I

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/beefe/picker/view/LoopView;->startTime:J

    .line 87
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 96
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/LoopView;->initLoopView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x3f866666    # 1.05f

    .line 32
    iput p2, p0, Lcom/beefe/picker/view/LoopView;->scaleX:F

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/beefe/picker/view/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p2, 0x7

    .line 70
    iput p2, p0, Lcom/beefe/picker/view/LoopView;->textEllipsisLen:I

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    const-wide/16 p2, 0x0

    .line 85
    iput-wide p2, p0, Lcom/beefe/picker/view/LoopView;->startTime:J

    .line 87
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/beefe/picker/view/LoopView;->tempRect:Landroid/graphics/Rect;

    .line 101
    invoke-direct {p0, p1}, Lcom/beefe/picker/view/LoopView;->initLoopView(Landroid/content/Context;)V

    return-void
.end method

.method private getX(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 3

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/beefe/picker/view/LoopView;->tempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 423
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/beefe/picker/view/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/beefe/picker/view/LoopView;->scaleX:F

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/beefe/picker/view/LoopView;->scaleX:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    div-float/2addr p1, p2

    return p1

    :cond_0
    return v0
.end method

.method private getY(Landroid/graphics/Paint;)F
    .locals 4

    .line 436
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 439
    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 440
    iget v0, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private initLoopView(Landroid/content/Context;)V
    .locals 2

    .line 105
    iput-object p1, p0, Lcom/beefe/picker/view/LoopView;->context:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/beefe/picker/view/MessageHandler;

    invoke-direct {v0, p0}, Lcom/beefe/picker/view/MessageHandler;-><init>(Lcom/beefe/picker/view/LoopView;)V

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->handler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/beefe/picker/view/LoopViewGestureListener;

    invoke-direct {v1, p0}, Lcom/beefe/picker/view/LoopViewGestureListener;-><init>(Lcom/beefe/picker/view/LoopView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 110
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/beefe/picker/view/LoopView;->isLoop:Z

    const/16 v0, 0x9

    .line 112
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->itemsVisible:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/beefe/picker/view/LoopView;->textSize:I

    .line 115
    iput v1, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    .line 118
    invoke-direct {p0}, Lcom/beefe/picker/view/LoopView;->initPaints()V

    return-void
.end method

.method private initPaints()V
    .locals 3

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    const v1, -0x505051

    .line 123
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/beefe/picker/view/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    .line 129
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/beefe/picker/view/LoopView;->scaleX:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 132
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 133
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lcom/beefe/picker/view/LoopView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintIndicator:Landroid/graphics/Paint;

    const v2, -0x47443e

    .line 136
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v1, v0}, Lcom/beefe/picker/view/LoopView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private remeasure()V
    .locals 10

    .line 151
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget v1, p0, Lcom/beefe/picker/view/LoopView;->textSize:I

    iput v1, p0, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-float v2, v1

    .line 156
    iget v3, p0, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/beefe/picker/view/LoopView;->itemsVisible:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/beefe/picker/view/LoopView;->halfCircumference:I

    mul-int/lit8 v4, v2, 0x2

    int-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    .line 157
    iput v4, p0, Lcom/beefe/picker/view/LoopView;->measuredHeight:I

    int-to-double v8, v2

    div-double/2addr v8, v6

    double-to-int v2, v8

    .line 158
    iput v2, p0, Lcom/beefe/picker/view/LoopView;->radius:I

    int-to-float v2, v4

    int-to-float v5, v1

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 159
    iput v2, p0, Lcom/beefe/picker/view/LoopView;->firstLineY:I

    int-to-float v2, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 160
    iput v1, p0, Lcom/beefe/picker/view/LoopView;->secondLineY:I

    .line 161
    iget v1, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 162
    iget-boolean v1, p0, Lcom/beefe/picker/view/LoopView;->isLoop:Z

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    .line 169
    :cond_2
    :goto_0
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    iput v0, p0, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    return-void
.end method


# virtual methods
.method public cancelFuture()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/beefe/picker/view/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected final drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 6

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 293
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 294
    iget v4, p0, Lcom/beefe/picker/view/LoopView;->textEllipsisLen:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    goto :goto_3

    .line 297
    :cond_0
    aget-char v4, v1, v2

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_2

    const/16 v5, 0x5e

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x2

    .line 304
    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_3
    :goto_3
    array-length v1, v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_4

    .line 308
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 313
    :cond_4
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIndexItem(I)Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/String;)I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final getSelectedIndex()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->selectedIndex:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->selectedItem:Ljava/lang/String;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->measuredHeight:I

    return v0
.end method

.method public hasItem(Ljava/lang/String;)Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 318
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget v1, v6, Lcom/beefe/picker/view/LoopView;->itemsVisible:I

    new-array v8, v1, [Ljava/lang/String;

    .line 323
    iget v1, v6, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    int-to-float v1, v1

    iget v2, v6, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    iget v3, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 324
    iget v2, v6, Lcom/beefe/picker/view/LoopView;->initPosition:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    .line 326
    iget-boolean v0, v6, Lcom/beefe/picker/view/LoopView;->isLoop:Z

    const/4 v9, 0x0

    if-nez v0, :cond_2

    if-gez v2, :cond_1

    .line 328
    iput v9, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    .line 330
    :cond_1
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 331
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    .line 335
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    .line 337
    :cond_3
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    .line 338
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    .line 342
    :cond_4
    :goto_0
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    int-to-float v0, v0

    iget v1, v6, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    iget v2, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    rem-float/2addr v0, v1

    float-to-int v10, v0

    move v0, v9

    .line 345
    :goto_1
    iget v1, v6, Lcom/beefe/picker/view/LoopView;->itemsVisible:I

    if-ge v0, v1, :cond_a

    .line 346
    iget v2, v6, Lcom/beefe/picker/view/LoopView;->preCurrentIndex:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    sub-int/2addr v2, v1

    .line 347
    iget-boolean v1, v6, Lcom/beefe/picker/view/LoopView;->isLoop:Z

    if-eqz v1, :cond_7

    :goto_2
    if-gez v2, :cond_5

    .line 349
    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_2

    .line 351
    :cond_5
    :goto_3
    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v2, v1, :cond_6

    .line 352
    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v2, v1

    goto :goto_3

    .line 354
    :cond_6
    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v0

    goto :goto_4

    :cond_7
    const-string v1, ""

    if-gez v2, :cond_8

    .line 356
    aput-object v1, v8, v0

    goto :goto_4

    .line 357
    :cond_8
    iget-object v3, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_9

    .line 358
    aput-object v1, v8, v0

    goto :goto_4

    .line 360
    :cond_9
    iget-object v1, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    .line 364
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->firstLineY:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, v6, Lcom/beefe/picker/view/LoopView;->firstLineY:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 365
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->secondLineY:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, v6, Lcom/beefe/picker/view/LoopView;->secondLineY:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintIndicator:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v9

    .line 368
    :goto_5
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->itemsVisible:I

    if-ge v11, v0, :cond_10

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 372
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-float v0, v0

    iget v1, v6, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    mul-float v12, v0, v1

    int-to-float v0, v11

    mul-float/2addr v0, v12

    int-to-float v1, v10

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    .line 373
    iget v4, v6, Lcom/beefe/picker/view/LoopView;->halfCircumference:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    const-wide v4, 0x4056800000000000L    # 90.0

    div-double v2, v0, v2

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v13

    sub-double/2addr v4, v2

    double-to-float v2, v4

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-gez v3, :cond_f

    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_b

    goto/16 :goto_7

    .line 379
    :cond_b
    iget v2, v6, Lcom/beefe/picker/view/LoopView;->radius:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v13, v6, Lcom/beefe/picker/view/LoopView;->radius:I

    int-to-double v13, v13

    mul-double/2addr v4, v13

    sub-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v13, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-double v13, v13

    mul-double/2addr v4, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v13

    sub-double/2addr v2, v4

    double-to-int v13, v2

    const/4 v2, 0x0

    int-to-float v3, v13

    .line 380
    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 381
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v7, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 382
    aget-object v14, v8, v11

    .line 383
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->firstLineY:I

    if-gt v13, v0, :cond_c

    iget v1, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    add-int/2addr v1, v13

    if-lt v1, v0, :cond_c

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 386
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v0

    iget v1, v6, Lcom/beefe/picker/view/LoopView;->firstLineY:I

    sub-int/2addr v1, v13

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 387
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/beefe/picker/view/LoopView;->getX(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/beefe/picker/view/LoopView;->getY(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/beefe/picker/view/LoopView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 390
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->firstLineY:I

    sub-int/2addr v0, v13

    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v1

    float-to-int v2, v12

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 391
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/beefe/picker/view/LoopView;->getX(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/beefe/picker/view/LoopView;->getY(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/beefe/picker/view/LoopView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 393
    :cond_c
    iget v1, v6, Lcom/beefe/picker/view/LoopView;->secondLineY:I

    if-gt v13, v1, :cond_d

    iget v2, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    add-int/2addr v2, v13

    if-lt v2, v1, :cond_d

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v0

    iget v1, v6, Lcom/beefe/picker/view/LoopView;->secondLineY:I

    sub-int/2addr v1, v13

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 397
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/beefe/picker/view/LoopView;->getX(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/beefe/picker/view/LoopView;->getY(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/beefe/picker/view/LoopView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 400
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->secondLineY:I

    sub-int/2addr v0, v13

    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v1

    float-to-int v2, v12

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 401
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/beefe/picker/view/LoopView;->getX(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/beefe/picker/view/LoopView;->getY(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/beefe/picker/view/LoopView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_d
    if-lt v13, v0, :cond_e

    .line 403
    iget v0, v6, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    add-int/2addr v0, v13

    if-gt v0, v1, :cond_e

    .line 405
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v0

    float-to-int v1, v12

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 406
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/beefe/picker/view/LoopView;->getX(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/beefe/picker/view/LoopView;->getY(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/beefe/picker/view/LoopView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    iput-object v14, v6, Lcom/beefe/picker/view/LoopView;->selectedItem:Ljava/lang/String;

    .line 408
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, v6, Lcom/beefe/picker/view/LoopView;->selectedIndex:I

    goto :goto_6

    .line 411
    :cond_e
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->getWidth()I

    move-result v0

    float-to-int v1, v12

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 412
    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/beefe/picker/view/LoopView;->getX(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/beefe/picker/view/LoopView;->getY(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/beefe/picker/view/LoopView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 414
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    .line 377
    :cond_f
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :cond_10
    return-void
.end method

.method protected final onItemSelected()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->onItemSelectedListener:Lcom/beefe/picker/view/OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lcom/beefe/picker/view/OnItemSelectedRunnable;

    invoke-direct {v0, p0}, Lcom/beefe/picker/view/OnItemSelectedRunnable;-><init>(Lcom/beefe/picker/view/LoopView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/beefe/picker/view/LoopView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/beefe/picker/view/LoopView;->remeasure()V

    .line 147
    iget p2, p0, Lcom/beefe/picker/view/LoopView;->measuredHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/beefe/picker/view/LoopView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 446
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 447
    iget v1, p0, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    iget v2, p0, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-nez v0, :cond_4

    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 479
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->radius:I

    int-to-float v2, v0

    sub-float/2addr v2, p1

    int-to-float p1, v0

    div-float/2addr v2, p1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    iget p1, p0, Lcom/beefe/picker/view/LoopView;->radius:I

    int-to-double v7, p1

    mul-double/2addr v5, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v1, p1

    float-to-double v7, p1

    add-double/2addr v5, v7

    float-to-double v7, v1

    div-double/2addr v5, v7

    double-to-int p1, v5

    .line 482
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    int-to-float v0, v0

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 483
    iget v2, p0, Lcom/beefe/picker/view/LoopView;->itemsVisible:I

    div-int/2addr v2, v4

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/beefe/picker/view/LoopView;->startTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x78

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    .line 487
    sget-object p1, Lcom/beefe/picker/view/LoopView$ACTION;->DRAG:Lcom/beefe/picker/view/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcom/beefe/picker/view/LoopView;->smoothScroll(Lcom/beefe/picker/view/LoopView$ACTION;)V

    goto :goto_0

    .line 490
    :cond_0
    sget-object p1, Lcom/beefe/picker/view/LoopView$ACTION;->CLICK:Lcom/beefe/picker/view/LoopView$ACTION;

    invoke-virtual {p0, p1}, Lcom/beefe/picker/view/LoopView;->smoothScroll(Lcom/beefe/picker/view/LoopView$ACTION;)V

    goto :goto_0

    .line 457
    :cond_1
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->previousY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/beefe/picker/view/LoopView;->previousY:F

    .line 460
    iget p1, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    .line 463
    iget-boolean p1, p0, Lcom/beefe/picker/view/LoopView;->isLoop:Z

    if-nez p1, :cond_4

    .line 464
    iget p1, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 465
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 467
    iget v1, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    float-to-int p1, p1

    .line 468
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    goto :goto_0

    :cond_2
    int-to-float p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    float-to-int p1, v0

    .line 470
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/beefe/picker/view/LoopView;->startTime:J

    .line 452
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->cancelFuture()V

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/beefe/picker/view/LoopView;->previousY:F

    .line 495
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    return v3
.end method

.method protected final scrollBy(F)V
    .locals 7

    .line 188
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->cancelFuture()V

    .line 191
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/beefe/picker/view/InertiaTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/beefe/picker/view/InertiaTimerTask;-><init>(Lcom/beefe/picker/view/LoopView;F)V

    const/16 p1, 0xa

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/beefe/picker/view/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    .line 268
    invoke-direct {p0}, Lcom/beefe/picker/view/LoopView;->remeasure()V

    .line 269
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    return-void
.end method

.method public final setListener(Lcom/beefe/picker/view/OnItemSelectedListener;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/beefe/picker/view/LoopView;->onItemSelectedListener:Lcom/beefe/picker/view/OnItemSelectedListener;

    return-void
.end method

.method public final setNotLoop()V
    .locals 1

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/beefe/picker/view/LoopView;->isLoop:Z

    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 237
    invoke-virtual {p0, p1}, Lcom/beefe/picker/view/LoopView;->setSelectedPosition(I)V

    return-void
.end method

.method public final setSelectedPosition(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 250
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/beefe/picker/view/LoopView;->items:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 253
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->initPosition:I

    .line 256
    :cond_1
    :goto_0
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->selectedIndex:I

    .line 257
    iput v0, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    .line 258
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->cancelFuture()V

    .line 259
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    return-void
.end method

.method public final setTextEllipsisLen(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->textEllipsisLen:I

    return-void
.end method

.method public final setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/beefe/picker/view/LoopView;->textSize:I

    .line 219
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    iget-object p1, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    iget v0, p0, Lcom/beefe/picker/view/LoopView;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    invoke-direct {p0}, Lcom/beefe/picker/view/LoopView;->remeasure()V

    .line 222
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 208
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->paintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->invalidate()V

    return-void
.end method

.method smoothScroll(Lcom/beefe/picker/view/LoopView$ACTION;)V
    .locals 7

    .line 173
    invoke-virtual {p0}, Lcom/beefe/picker/view/LoopView;->cancelFuture()V

    .line 174
    sget-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->FLING:Lcom/beefe/picker/view/LoopView$ACTION;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/beefe/picker/view/LoopView$ACTION;->DRAG:Lcom/beefe/picker/view/LoopView$ACTION;

    if-ne p1, v0, :cond_2

    .line 175
    :cond_0
    iget p1, p0, Lcom/beefe/picker/view/LoopView;->lineSpacingMultiplier:F

    iget v0, p0, Lcom/beefe/picker/view/LoopView;->maxTextHeight:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 176
    iget v0, p0, Lcom/beefe/picker/view/LoopView;->totalScrollY:I

    int-to-float v0, v0

    rem-float/2addr v0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 178
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    goto :goto_0

    :cond_1
    neg-int p1, v0

    .line 180
    iput p1, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    .line 183
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/beefe/picker/view/LoopView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/beefe/picker/view/SmoothScrollTimerTask;

    iget p1, p0, Lcom/beefe/picker/view/LoopView;->mOffset:I

    invoke-direct {v1, p0, p1}, Lcom/beefe/picker/view/SmoothScrollTimerTask;-><init>(Lcom/beefe/picker/view/LoopView;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/beefe/picker/view/LoopView;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
