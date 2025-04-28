.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$Configurator;,
        Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;,
        Lcom/github/barteksc/pdfviewer/PDFView$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "PDFView"


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private annotationRendering:Z

.field private antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private autoSpacing:Z

.field private bestQuality:Z

.field cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

.field callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

.field private defaultPage:I

.field private doubletapEnabled:Z

.field private dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

.field private dualPageMode:Z

.field private enableAntialiasing:Z

.field private enableSwipe:Z

.field private fitEachPage:Z

.field private hasSize:Z

.field private isLandscapeOrientation:Z

.field private isScrollHandleInit:Z

.field private maxZoom:F

.field private midZoom:F

.field private minZoom:F

.field private nightMode:Z

.field private onDrawPagesNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private pageFling:Z

.field private pageSnap:Z

.field private pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

.field private paint:Landroid/graphics/Paint;

.field pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

.field private pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

.field private recycled:Z

.field private renderDuringScale:Z

.field renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

.field private renderingHandlerThread:Landroid/os/HandlerThread;

.field private scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacingPx:I

.field private state:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field private swipeVertical:Z

.field private waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 297
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 103
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 104
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 105
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    .line 116
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 152
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 157
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    const/4 p2, 0x1

    .line 162
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 167
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 185
    new-instance v0, Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    .line 200
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->fitEachPage:Z

    .line 204
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    .line 206
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dualPageMode:Z

    .line 208
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isLandscapeOrientation:Z

    .line 213
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    .line 215
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe:Z

    .line 217
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->doubletapEnabled:Z

    .line 219
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->nightMode:Z

    .line 221
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    .line 230
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 240
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    .line 246
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    .line 254
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    .line 259
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    .line 260
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 266
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    .line 271
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->autoSpacing:Z

    .line 276
    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFling:Z

    .line 281
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    .line 286
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->hasSize:Z

    .line 299
    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 301
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance p2, Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {p2}, Lcom/github/barteksc/pdfviewer/CacheManager;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    .line 306
    new-instance p2, Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    .line 307
    new-instance v1, Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-direct {v1, p0, p2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    .line 308
    new-instance p2, Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {p2, p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    .line 310
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    .line 311
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    .line 312
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    new-instance p2, Lio/legere/pdfiumandroid/PdfiumCore;

    new-instance v1, Lio/legere/pdfiumandroid/util/Config;

    invoke-direct {v1}, Lio/legere/pdfiumandroid/util/Config;-><init>()V

    invoke-direct {p2, p1, v1}, Lio/legere/pdfiumandroid/PdfiumCore;-><init>(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    .line 315
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setFitEachPage(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/PDFView;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->hasSize:Z

    return p0
.end method

.method static synthetic access$302(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    return-void
.end method

.method static synthetic access$700(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSpacing(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setAutoSpacing(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V

    return-void
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 11

    .line 728
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 729
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object v2

    .line 740
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    .line 741
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v5

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, v5, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v3

    .line 742
    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v5

    .line 743
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v5

    div-float/2addr v5, v4

    goto :goto_0

    .line 745
    :cond_1
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v5

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, v5, v6}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v5

    .line 746
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v3

    .line 747
    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    div-float/2addr v3, v4

    .line 749
    :goto_0
    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 751
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 752
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 754
    iget v6, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v6

    .line 755
    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v7

    .line 756
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v8

    .line 757
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 762
    new-instance v2, Landroid/graphics/RectF;

    float-to-int v9, v6

    int-to-float v9, v9

    float-to-int v10, v7

    int-to-float v10, v10

    add-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v7, v0

    float-to-int v0, v7

    int-to-float v0, v0

    invoke-direct {v2, v9, v10, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 767
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, v5

    .line 768
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v6, v3

    .line 769
    iget v7, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_5

    iget v7, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v7

    const/4 v7, 0x0

    cmpg-float v0, v0, v7

    if-lez v0, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v6

    .line 770
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v0, v0, v8

    if-gez v0, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v0

    cmpg-float v0, v6, v7

    if-gtz v0, :cond_2

    goto :goto_2

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 777
    sget-boolean v0, Lcom/github/barteksc/pdfviewer/util/Constants;->DEBUG_MODE:Z

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result p2

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_3

    const/high16 p2, -0x10000

    goto :goto_1

    :cond_3
    const p2, -0xffff01

    :goto_1
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    neg-float p2, v5

    neg-float v0, v3

    .line 783
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_5
    :goto_2
    neg-float p2, v5

    neg-float v0, v3

    .line 771
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 5

    if-eqz p3, :cond_1

    .line 704
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p2, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    goto :goto_0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p2, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    move v4, v1

    move v1, v0

    move v0, v4

    .line 712
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 713
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v2, p2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    .line 716
    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    .line 714
    invoke-interface {p3, p1, v3, v2, p2}, Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;->onLayerDrawn(Landroid/graphics/Canvas;FFI)V

    neg-float p2, v1

    neg-float p3, v0

    .line 719
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V
    .locals 8

    .line 324
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 330
    new-instance v7, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[ILcom/github/barteksc/pdfviewer/PDFView;Lio/legere/pdfiumandroid/PdfiumCore;)V

    iput-object v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    .line 331
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {v7, p1, p2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 325
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setAutoSpacing(Z)V
    .locals 0

    .line 1325
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->autoSpacing:Z

    return-void
.end method

.method private setDefaultPage(I)V
    .locals 0

    .line 1191
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    return-void
.end method

.method private setFitEachPage(Z)V
    .locals 0

    .line 1337
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->fitEachPage:Z

    return-void
.end method

.method private setPageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-void
.end method

.method private setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0

    .line 1211
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-void
.end method

.method private setSpacing(I)V
    .locals 1

    .line 1321
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return-void
.end method

.method private setSwipeVertical(Z)V
    .locals 0

    .line 1281
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 577
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    .line 578
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v1

    :cond_1
    if-lez p1, :cond_4

    .line 580
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_2
    if-gez p1, :cond_3

    .line 584
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    return v1

    :cond_3
    if-lez p1, :cond_4

    .line 586
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 599
    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    .line 600
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v1

    :cond_1
    if-lez p1, :cond_4

    .line 602
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_2
    if-gez p1, :cond_3

    .line 606
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    return v1

    :cond_3
    if-lez p1, :cond_4

    .line 608
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 1

    .line 511
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 512
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->computeFling()V

    return-void
.end method

.method public doRenderDuringScale()Z
    .locals 1

    .line 1353
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return v0
.end method

.method public documentFitsView()Z
    .locals 4

    .line 1138
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    .line 1139
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 1142
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public enableAnnotationRendering(Z)V
    .locals 0

    .line 1285
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return-void
.end method

.method public enableAntialiasing(Z)V
    .locals 0

    .line 1301
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return-void
.end method

.method enableDoubletap(Z)V
    .locals 0

    .line 452
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->doubletapEnabled:Z

    return-void
.end method

.method public enableRenderDuringScale(Z)V
    .locals 0

    .line 1293
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return-void
.end method

.method findFocusPage(FF)I
    .locals 2

    .line 1063
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    if-eqz v0, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 1068
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 1069
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    .line 1073
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    neg-float p1, p1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {p2, p1, v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result p1

    return p1
.end method

.method findSnapEdge(I)Lcom/github/barteksc/pdfviewer/util/SnapEdge;
    .locals 5

    .line 1026
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    if-eqz v0, :cond_6

    if-gez p1, :cond_0

    goto :goto_2

    .line 1029
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 1030
    :goto_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v1

    neg-float v1, v1

    .line 1031
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    .line 1032
    :goto_1
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v3, p1, v4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result p1

    int-to-float v2, v2

    cmpl-float v3, v2, p1

    if-ltz v3, :cond_3

    .line 1035
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->CENTER:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object p1

    :cond_3
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_4

    .line 1037
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->START:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object p1

    :cond_4
    sub-float/2addr v1, p1

    sub-float/2addr v0, v2

    cmpl-float p1, v1, v0

    if-lez p1, :cond_5

    .line 1039
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->END:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object p1

    .line 1041
    :cond_5
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object p1

    .line 1027
    :cond_6
    :goto_2
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    return-object p1
.end method

.method public fitToWidth(I)V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    .line 1148
    sget-object p1, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    const-string v0, "Cannot fit, document not rendered yet"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1151
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v1, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 1152
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    return-void
.end method

.method public fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1390
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/AssetSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/AssetSource;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromBytes([B)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1411
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;-><init>([B)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1397
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/FileSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/FileSource;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromSource(Lcom/github/barteksc/pdfviewer/source/DocumentSource;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1425
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1418
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    .line 1404
    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/UriSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/UriSource;-><init>(Landroid/net/Uri;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .line 1163
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    .line 1167
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    .line 1171
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    return v0
.end method

.method public getDocumentMeta()Lio/legere/pdfiumandroid/PdfDocument$Meta;
    .locals 1

    .line 1360
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1363
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMetaData()Lio/legere/pdfiumandroid/PdfDocument$Meta;

    move-result-object v0

    return-object v0
.end method

.method public getLinks(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1381
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1383
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLinks(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMaxZoom()F
    .locals 1

    .line 1241
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return v0
.end method

.method public getMidZoom()F
    .locals 1

    .line 1233
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    .line 1225
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return v0
.end method

.method public getPageAtPositionOffset(F)I
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result p1

    return p1
.end method

.method public getPageCount()I
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 427
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    return v0
.end method

.method public getPageFitPolicy()Lcom/github/barteksc/pdfviewer/util/FitPolicy;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-object v0
.end method

.method public getPageSize(I)Landroid/util/SizeF;
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1157
    new-instance p1, Landroid/util/SizeF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1

    .line 1159
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object p1

    return-object p1
.end method

.method public getPositionOffset()F
    .locals 3

    .line 393
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    goto :goto_0

    .line 396
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 398
    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->limit(FFF)F

    move-result v0

    return v0
.end method

.method getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object v0
.end method

.method public getSpacingPx()I
    .locals 1

    .line 1305
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 1370
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    .line 1371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1373
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getBookmarks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 1183
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return v0
.end method

.method public isAnnotationRendering()Z
    .locals 1

    .line 1289
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .line 1297
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return v0
.end method

.method public isAutoSpacingEnabled()Z
    .locals 1

    .line 1309
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->autoSpacing:Z

    return v0
.end method

.method public isBestQuality()Z
    .locals 1

    .line 1253
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return v0
.end method

.method isDoubletapEnabled()Z
    .locals 1

    .line 456
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->doubletapEnabled:Z

    return v0
.end method

.method public isFitEachPage()Z
    .locals 1

    .line 1341
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->fitEachPage:Z

    return v0
.end method

.method public isOnDualPageMode()Z
    .locals 1

    .line 1257
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dualPageMode:Z

    return v0
.end method

.method public isOnLandscapeOrientation()Z
    .locals 1

    .line 1261
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isLandscapeOrientation:Z

    return v0
.end method

.method public isPageFlingEnabled()Z
    .locals 1

    .line 1317
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFling:Z

    return v0
.end method

.method public isPageSnap()Z
    .locals 1

    .line 1345
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    return v0
.end method

.method public isSwipeEnabled()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe:Z

    return v0
.end method

.method public isSwipeVertical()Z
    .locals 1

    .line 1273
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method public isZooming()Z
    .locals 2

    .line 1187
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    return-void
.end method

.method public jumpTo(IZ)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->determineValidPageNumberFrom(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    neg-float v0, v0

    .line 346
    :goto_0
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 348
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p2, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_1

    .line 350
    :cond_2
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 354
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p2, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    goto :goto_1

    .line 356
    :cond_4
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 359
    :goto_1
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    return-void
.end method

.method loadComplete(Lcom/github/barteksc/pdfviewer/PdfFile;)V
    .locals 2

    .line 809
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 811
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 813
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 821
    :cond_1
    new-instance v0, Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 822
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->start()V

    .line 824
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_2

    .line 825
    invoke-interface {v0, p0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enable()V

    .line 831
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnLoadComplete(I)V

    .line 833
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    return-void
.end method

.method loadError(Ljava/lang/Throwable;)V
    .locals 2

    .line 837
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 839
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnError()Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    move-result-object v0

    .line 840
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 841
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    if-eqz v0, :cond_0

    .line 843
    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "PDFView"

    const-string v1, "load pdf error"

    .line 845
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method loadPageByOffset()V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 973
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 974
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    goto :goto_0

    .line 976
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 977
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 980
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    sub-float/2addr v0, v2

    neg-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v0, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageAtOffset(FF)I

    move-result v0

    if-ltz v0, :cond_2

    .line 982
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 983
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    goto :goto_1

    .line 985
    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    :goto_1
    return-void
.end method

.method public loadPages()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 798
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 799
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeANewSet()V

    .line 801
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPages()V

    .line 802
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    :cond_1
    :goto_0
    return-void
.end method

.method public moveRelativeTo(FF)V
    .locals 1

    .line 1097
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 875
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    return-void
.end method

.method public moveTo(FFZ)V
    .locals 5

    .line 887
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 889
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 890
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 891
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    add-float v3, p1, v0

    .line 895
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 896
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    .line 901
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    .line 902
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 903
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p2, v2

    if-lez v1, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    add-float v1, p2, v0

    .line 907
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    neg-float p2, v0

    .line 908
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 912
    :cond_5
    :goto_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_6

    .line 913
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_6

    :cond_6
    cmpl-float v0, p2, v0

    if-lez v0, :cond_7

    .line 915
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_6

    .line 917
    :cond_7
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_6

    .line 921
    :cond_8
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    .line 922
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_9

    .line 923
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, v1

    :goto_3
    sub-float/2addr p2, v0

    goto :goto_4

    :cond_9
    cmpl-float v3, p2, v2

    if-lez v3, :cond_a

    move p2, v2

    goto :goto_4

    :cond_a
    add-float v3, p2, v0

    .line 927
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 928
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_3

    .line 933
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    .line 934
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_c

    .line 935
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_5

    :cond_c
    cmpl-float v1, p1, v2

    if-lez v1, :cond_d

    move p1, v2

    goto :goto_5

    :cond_d
    add-float v1, p1, v0

    .line 939
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    neg-float p1, v0

    .line 940
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 944
    :cond_e
    :goto_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_f

    .line 945
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_6

    :cond_f
    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 947
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_6

    .line 949
    :cond_10
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    .line 953
    :goto_6
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 954
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 955
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    move-result p1

    if-eqz p3, :cond_11

    .line 957
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p2, :cond_11

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result p2

    if-nez p2, :cond_11

    .line 958
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {p2, p1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setScroll(F)V

    .line 961
    :cond_11
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnPageScroll(IF)V

    .line 963
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void
.end method

.method public onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-ne v0, v1, :cond_0

    .line 862
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    .line 863
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnRender(I)V

    .line 866
    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 871
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 521
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    .line 529
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 617
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 651
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 657
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->nightMode:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 659
    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 662
    :goto_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_4

    return-void

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_5

    return-void

    .line 671
    :cond_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    .line 672
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 673
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 676
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getThumbnails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 677
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_2

    .line 682
    :cond_6
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/CacheManager;->getPageParts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    .line 683
    invoke-direct {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    .line 684
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnDrawAll()Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    .line 685
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 686
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 690
    :cond_8
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 691
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnDrawAll()Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    goto :goto_4

    .line 693
    :cond_9
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 695
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->getOnDraw()Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    neg-float v0, v0

    neg-float v1, v1

    .line 698
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method onPageError(Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;)V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getPage()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnPageError(ILjava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->hasSize:Z

    .line 535
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 543
    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    int-to-float p3, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p3, v1

    add-float/2addr v0, p3

    .line 544
    iget p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float p3, p3

    int-to-float p4, p4

    mul-float/2addr p4, v1

    add-float/2addr p3, p4

    .line 549
    iget-boolean p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz p4, :cond_2

    .line 550
    iget-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result p4

    div-float/2addr v0, p4

    .line 551
    iget-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {p4, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result p4

    goto :goto_0

    .line 553
    :cond_2
    iget-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {p4, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result p4

    div-float/2addr v0, p4

    .line 554
    iget-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result p4

    :goto_0
    div-float/2addr p3, p4

    .line 557
    iget-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p4}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 558
    iget-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    new-instance v2, Lio/legere/pdfiumandroid/util/Size;

    invoke-direct {v2, p1, p2}, Lio/legere/pdfiumandroid/util/Size;-><init>(II)V

    invoke-virtual {p4, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->recalculatePageSizes(Lio/legere/pdfiumandroid/util/Size;)V

    .line 560
    iget-boolean p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz p4, :cond_3

    neg-float p4, v0

    .line 561
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v0

    mul-float/2addr p4, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p4, p1

    iput p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float p1, p3

    .line 562
    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {p3, p4}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    goto :goto_1

    :cond_3
    neg-float p4, v0

    .line 564
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    mul-float/2addr p4, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p4, p1

    iput p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float p1, p3

    .line 565
    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    .line 567
    :goto_1
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    .line 568
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    :cond_4
    :goto_2
    return-void
.end method

.method public pageFillsScreen()Z
    .locals 5

    .line 1080
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    neg-float v0, v0

    .line 1081
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result v1

    sub-float v1, v0, v1

    .line 1082
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1083
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 1085
    :cond_1
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method public performPageSnap()V
    .locals 1

    const/4 v0, 0x1

    .line 990
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->performPageSnap(Z)V

    return-void
.end method

.method public performPageSnap(Z)V
    .locals 3

    .line 997
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->findFocusPage(FF)I

    move-result v0

    .line 1001
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->findSnapEdge(I)Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    move-result-object v1

    .line 1002
    sget-object v2, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->NONE:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    if-ne v1, v2, :cond_1

    return-void

    .line 1006
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->snapOffsetForPage(ILcom/github/barteksc/pdfviewer/util/SnapEdge;)F

    move-result v0

    .line 1007
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 1009
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    goto :goto_0

    .line 1011
    :cond_2
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 1015
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    goto :goto_0

    :cond_4
    neg-float p1, v0

    .line 1017
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    :cond_5
    :goto_0
    return-void
.end method

.method public recycle()V
    .locals 4

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->waitingDocumentConfigurator:Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 468
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    .line 469
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->disable()V

    .line 472
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->stop()V

    .line 474
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancel(Z)Z

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/CacheManager;->recycle()V

    .line 483
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v1, :cond_2

    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    if-eqz v3, :cond_2

    .line 484
    invoke-interface {v1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->destroyLayout()V

    .line 487
    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    if-eqz v1, :cond_3

    .line 488
    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->dispose()V

    .line 489
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    .line 492
    :cond_3
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    .line 493
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 496
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    .line 497
    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    .line 498
    new-instance v0, Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    .line 499
    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method redraw()V
    .locals 0

    .line 850
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void
.end method

.method public resetZoom()V
    .locals 1

    .line 1195
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    return-void
.end method

.method public resetZoomWithAnimation()V
    .locals 1

    .line 1199
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(F)V

    return-void
.end method

.method public setDualPageMode(Z)V
    .locals 0

    .line 1269
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dualPageMode:Z

    return-void
.end method

.method public setLandscapeOrientation(Z)V
    .locals 0

    .line 1265
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isLandscapeOrientation:Z

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    .line 1245
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return-void
.end method

.method public setMidZoom(F)V
    .locals 0

    .line 1237
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    .line 1229
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return-void
.end method

.method public setNightMode(Z)V
    .locals 1

    .line 435
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->nightMode:Z

    if-eqz p1, :cond_0

    .line 437
    new-instance p1, Landroid/graphics/ColorMatrix;

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 444
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 445
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setPageFling(Z)V
    .locals 0

    .line 1313
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageFling:Z

    return-void
.end method

.method public setPageSnap(Z)V
    .locals 0

    .line 1349
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageSnap:Z

    return-void
.end method

.method public setPositionOffset(F)V
    .locals 1

    const/4 v0, 0x1

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    return-void
.end method

.method public setPositionOffset(FZ)V
    .locals 3

    .line 407
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    .line 408
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getDocLen(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 431
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableSwipe:Z

    return-void
.end method

.method showPage(I)V
    .locals 2

    .line 367
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->determineValidPageNumberFrom(I)I

    move-result p1

    .line 374
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    .line 376
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    .line 378
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result p1

    if-nez p1, :cond_1

    .line 379
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setPageNum(I)V

    .line 382
    :cond_1
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->callOnPageChange(II)V

    return-void
.end method

.method snapOffsetForPage(ILcom/github/barteksc/pdfviewer/util/SnapEdge;)F
    .locals 4

    .line 1049
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageOffset(IF)F

    move-result v0

    .line 1051
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    .line 1052
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v2, p1, v3}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageLength(IF)F

    move-result p1

    .line 1054
    sget-object v2, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->CENTER:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    if-ne p2, v2, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    div-float/2addr p1, p2

    :goto_1
    add-float/2addr v0, p1

    goto :goto_2

    .line 1056
    :cond_1
    sget-object v2, Lcom/github/barteksc/pdfviewer/util/SnapEdge;->END:Lcom/github/barteksc/pdfviewer/util/SnapEdge;

    if-ne p2, v2, :cond_2

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method public stopFling()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public toCurrentScale(F)F
    .locals 1

    .line 1179
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public toRealScale(F)F
    .locals 1

    .line 1175
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float/2addr p1, v0

    return p1
.end method

.method public useBestQuality(Z)V
    .locals 0

    .line 1249
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return-void
.end method

.method public zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .locals 1

    .line 1129
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public zoomCenteredTo(FLandroid/graphics/PointF;)V
    .locals 4

    .line 1116
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    .line 1117
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    .line 1118
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    mul-float/2addr p1, v0

    .line 1119
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    mul-float/2addr v1, v0

    .line 1120
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    add-float/2addr p1, v2

    .line 1121
    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, v0

    sub-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 1122
    invoke-virtual {p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public zoomTo(F)V
    .locals 0

    .line 1104
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return-void
.end method

.method public zoomWithAnimation(F)V
    .locals 4

    .line 1207
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method

.method public zoomWithAnimation(FFF)V
    .locals 2

    .line 1203
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method
