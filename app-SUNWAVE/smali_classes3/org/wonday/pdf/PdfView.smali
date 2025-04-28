.class public Lorg/wonday/pdf/PdfView;
.super Lcom/github/barteksc/pdfviewer/PDFView;
.source "PdfView.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnTapListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;
.implements Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;
.implements Lcom/github/barteksc/pdfviewer/link/LinkHandler;


# instance fields
.field private autoSpacing:Z

.field private enableAnnotationRendering:Z

.field private enableAntialiasing:Z

.field private enableDoubleTapZoom:Z

.field private enablePaging:Z

.field private fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private horizontal:Z

.field private lastPageHeight:F

.field private lastPageWidth:F

.field private maxScale:F

.field private minScale:F

.field private oldH:I

.field private oldW:I

.field private originalWidth:F

.field private page:I

.field private pageFling:Z

.field private pageSnap:Z

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private scale:F

.field private scrollEnabled:Z

.field private singlePage:Z

.field private spacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lorg/wonday/pdf/PdfView;->page:I

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->horizontal:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    iput v0, p0, Lorg/wonday/pdf/PdfView;->scale:F

    .line 62
    iput v0, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 63
    iput v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    const/16 v0, 0xa

    .line 65
    iput v0, p0, Lorg/wonday/pdf/PdfView;->spacing:I

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lorg/wonday/pdf/PdfView;->password:Ljava/lang/String;

    .line 67
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAntialiasing:Z

    .line 68
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAnnotationRendering:Z

    .line 69
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableDoubleTapZoom:Z

    .line 71
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->enablePaging:Z

    .line 72
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 73
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 74
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    .line 75
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object v0, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 76
    iput-boolean p2, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    .line 77
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->scrollEnabled:Z

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    .line 80
    iput p1, p0, Lorg/wonday/pdf/PdfView;->lastPageWidth:F

    .line 81
    iput p1, p0, Lorg/wonday/pdf/PdfView;->lastPageHeight:F

    .line 84
    iput p2, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    .line 85
    iput p2, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    return-void
.end method

.method private getURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 473
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 476
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private handlePage(I)V
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Lorg/wonday/pdf/PdfView;->jumpTo(I)V

    return-void
.end method

.method private handleUri(Ljava/lang/String;)V
    .locals 4

    .line 440
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkPressed|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 444
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 445
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    .line 447
    new-instance v2, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method private static setTouchesEnabled(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 489
    :cond_0
    new-instance v0, Lorg/wonday/pdf/PdfView$1;

    invoke-direct {v0}, Lorg/wonday/pdf/PdfView$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 497
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 498
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 499
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 500
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 501
    invoke-static {v1, p1}, Lorg/wonday/pdf/PdfView;->setTouchesEnabled(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setTouchesEnabled(Z)V
    .locals 0

    .line 482
    invoke-static {p0, p1}, Lorg/wonday/pdf/PdfView;->setTouchesEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private showLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PdfView"

    .line 469
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drawPdf()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/wonday/pdf/PdfView;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "drawPdf path:%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->showLog(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 287
    iget v0, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->setMinZoom(F)V

    .line 288
    iget v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->setMaxZoom(F)V

    .line 289
    iget v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    iget v1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->setMidZoom(F)V

    .line 290
    iget v0, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    .line 291
    iget v0, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    sput v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    .line 295
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->getURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v0

    .line 309
    :goto_0
    iget v1, p0, Lorg/wonday/pdf/PdfView;->page:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->horizontal:Z

    .line 310
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 311
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 313
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 314
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 315
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget v4, p0, Lorg/wonday/pdf/PdfView;->spacing:I

    .line 316
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-object v4, p0, Lorg/wonday/pdf/PdfView;->password:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->enableAntialiasing:Z

    .line 318
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-object v4, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 319
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    .line 320
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 321
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 322
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->scrollEnabled:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 323
    :goto_1
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->enableDoubleTapZoom:Z

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 324
    :goto_2
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    iget-boolean v4, p0, Lorg/wonday/pdf/PdfView;->enableAnnotationRendering:Z

    .line 325
    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    .line 326
    invoke-virtual {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 328
    iget-boolean v1, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    if-eqz v1, :cond_3

    new-array v1, v3, [I

    .line 329
    iget v4, p0, Lorg/wonday/pdf/PdfView;->page:I

    sub-int/2addr v4, v3

    aput v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 330
    invoke-direct {p0, v2}, Lorg/wonday/pdf/PdfView;->setTouchesEnabled(Z)V

    goto :goto_3

    .line 332
    :cond_3
    invoke-virtual {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    .line 335
    :goto_3
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    :cond_4
    return-void
.end method

.method public handleLinkEvent(Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;)V
    .locals 2

    .line 427
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lio/legere/pdfiumandroid/PdfDocument$Link;

    move-result-object v0

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument$Link;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->getLink()Lio/legere/pdfiumandroid/PdfDocument$Link;

    move-result-object p1

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfDocument$Link;->getDestPageIdx()Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->handleUri(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/wonday/pdf/PdfView;->handlePage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadComplete(I)V
    .locals 6

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Lorg/wonday/pdf/PdfView;->getPageSize(I)Landroid/util/SizeF;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    .line 144
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    .line 146
    iget v2, p0, Lorg/wonday/pdf/PdfView;->scale:F

    invoke-virtual {p0, v2}, Lorg/wonday/pdf/PdfView;->zoomTo(F)V

    .line 147
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadComplete|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getTableOfContents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message"

    invoke-interface {v2, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 154
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 155
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    .line 157
    new-instance v1, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 160
    invoke-interface {p1, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 276
    invoke-super {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->onAttachedToWindow()V

    .line 277
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->drawPdf()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 175
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Password required or incorrect password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "message"

    if-eqz v1, :cond_0

    const-string p1, "error|Password required or incorrect password."

    .line 177
    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 183
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 184
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    .line 186
    new-instance v2, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_1
    return-void
.end method

.method public onLayerDrawn(Landroid/graphics/Canvas;FFI)V
    .locals 3

    .line 242
    iget p1, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-nez p1, :cond_0

    .line 243
    iput p2, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    .line 246
    :cond_0
    iget p1, p0, Lorg/wonday/pdf/PdfView;->lastPageWidth:F

    cmpl-float v0, p1, p4

    if-lez v0, :cond_2

    iget v0, p0, Lorg/wonday/pdf/PdfView;->lastPageHeight:F

    cmpl-float p4, v0, p4

    if-lez p4, :cond_2

    cmpl-float p1, p2, p1

    if-nez p1, :cond_1

    cmpl-float p1, p3, v0

    if-eqz p1, :cond_2

    .line 248
    :cond_1
    iget p1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    .line 249
    iget p1, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    .line 251
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 252
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleChanged|"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/wonday/pdf/PdfView;->originalWidth:F

    div-float v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "message"

    invoke-interface {p1, v0, p4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 254
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v0

    invoke-static {p4, v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p4

    .line 255
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v0

    .line 257
    new-instance v1, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p4, :cond_2

    .line 260
    invoke-interface {p4, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 270
    :cond_2
    iput p2, p0, Lorg/wonday/pdf/PdfView;->lastPageWidth:F

    .line 271
    iput p3, p0, Lorg/wonday/pdf/PdfView;->lastPageHeight:F

    return-void
.end method

.method public onPageChanged(II)V
    .locals 4

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 95
    iput p1, p0, Lorg/wonday/pdf/PdfView;->page:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "%s %s / %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/wonday/pdf/PdfView;->showLog(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageChanged|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "message"

    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 102
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result p2

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 103
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result p2

    .line 105
    new-instance v1, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v2

    invoke-direct {v1, p2, v2, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 108
    invoke-interface {p1, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IF)V
    .locals 0

    .line 204
    iget p1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    .line 205
    iget p1, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    sput p1, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 133
    :cond_0
    iget p3, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    if-gtz p3, :cond_1

    iget p3, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    if-lez p3, :cond_2

    .line 134
    :cond_1
    iget p3, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    iget p4, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->onSizeChanged(IIII)V

    .line 135
    iput p1, p0, Lorg/wonday/pdf/PdfView;->oldW:I

    .line 136
    iput p2, p0, Lorg/wonday/pdf/PdfView;->oldH:I

    :cond_2
    return-void
.end method

.method public onTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 216
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageSingleTap|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/wonday/pdf/PdfView;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 220
    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object p1

    .line 221
    invoke-static {p0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v1

    .line 223
    new-instance v2, Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-virtual {p0}, Lorg/wonday/pdf/PdfView;->getId()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lorg/wonday/pdf/events/TopChangeEvent;-><init>(IILcom/facebook/react/bridge/WritableMap;)V

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setEnableAnnotationRendering(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAnnotationRendering:Z

    return-void
.end method

.method public setEnableAntialiasing(Z)V
    .locals 0

    .line 381
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableAntialiasing:Z

    return-void
.end method

.method public setEnableDoubleTapZoom(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enableDoubleTapZoom:Z

    return-void
.end method

.method public setEnablePaging(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->enablePaging:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 391
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 392
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 393
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->autoSpacing:Z

    .line 396
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageFling:Z

    .line 397
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->pageSnap:Z

    :goto_0
    return-void
.end method

.method public setFitPolicy(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 412
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->BOTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    goto :goto_0

    .line 407
    :cond_0
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->HEIGHT:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    goto :goto_0

    .line 404
    :cond_1
    sget-object p1, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    :goto_0
    return-void
.end method

.method public setHorizontal(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->horizontal:Z

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 361
    iput p1, p0, Lorg/wonday/pdf/PdfView;->maxScale:F

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    .line 357
    iput p1, p0, Lorg/wonday/pdf/PdfView;->minScale:F

    return-void
.end method

.method public setPage(I)V
    .locals 1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 349
    :goto_0
    iput p1, p0, Lorg/wonday/pdf/PdfView;->page:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->password:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/wonday/pdf/PdfView;->path:Ljava/lang/String;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 353
    iput p1, p0, Lorg/wonday/pdf/PdfView;->scale:F

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 369
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->scrollEnabled:Z

    return-void
.end method

.method public setSinglePage(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lorg/wonday/pdf/PdfView;->singlePage:Z

    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .line 373
    iput p1, p0, Lorg/wonday/pdf/PdfView;->spacing:I

    return-void
.end method
