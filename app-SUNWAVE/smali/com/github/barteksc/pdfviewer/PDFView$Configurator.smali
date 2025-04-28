.class public Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
.super Ljava/lang/Object;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private annotationRendering:Z

.field private antialiasing:Z

.field private autoSpacing:Z

.field private defaultPage:I

.field private final documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private dualPageMode:Z

.field private enableDoubletap:Z

.field private enableSwipe:Z

.field private fitEachPage:Z

.field private landscapeOrientation:Z

.field private linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

.field private nightMode:Z

.field private onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onLongPressListener:Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

.field private pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private pageFling:Z

.field private pageNumbers:[I

.field private pageSnap:Z

.field private password:Ljava/lang/String;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacing:I

.field private swipeHorizontal:Z

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method private constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V
    .locals 3

    .line 1492
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1434
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    const/4 v1, 0x1

    .line 1436
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    .line 1438
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    .line 1460
    new-instance v2, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;

    invoke-direct {v2, p1}, Lcom/github/barteksc/pdfviewer/link/DefaultLinkHandler;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    const/4 p1, 0x0

    .line 1462
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    .line 1464
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->landscapeOrientation:Z

    .line 1466
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->dualPageMode:Z

    .line 1468
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    .line 1470
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    .line 1472
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    .line 1474
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1476
    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    .line 1478
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    .line 1480
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    .line 1482
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 1484
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->fitEachPage:Z

    .line 1486
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    .line 1488
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    .line 1490
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    .line 1493
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V
    .locals 0

    .line 1430
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;)V

    return-void
.end method


# virtual methods
.method public autoSpacing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1612
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    return-object p0
.end method

.method public defaultPage(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1572
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    return-object p0
.end method

.method public disableLongpress()Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$100(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->disableLongpress()V

    return-object p0
.end method

.method public dualPageMode(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1582
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->dualPageMode:Z

    return-object p0
.end method

.method public enableAnnotationRendering(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1512
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    return-object p0
.end method

.method public enableAntialiasing(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1602
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    return-object p0
.end method

.method public enableDoubletap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1507
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    return-object p0
.end method

.method public enableSwipe(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1502
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    return-object p0
.end method

.method public fitEachPage(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1622
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->fitEachPage:Z

    return-object p0
.end method

.method public landscapeOrientation(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1577
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->landscapeOrientation:Z

    return-object p0
.end method

.method public linkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1567
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    return-object p0
.end method

.method public load()V
    .locals 4

    .line 1647
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$200(Lcom/github/barteksc/pdfviewer/PDFView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$302(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/PDFView$Configurator;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    return-void

    .line 1651
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    .line 1652
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnLoadComplete(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)V

    .line 1653
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    .line 1654
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1655
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnDrawAll(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1656
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    .line 1657
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    .line 1658
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V

    .line 1659
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V

    .line 1660
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLongPressListener:Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnLongPress(Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;)V

    .line 1661
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setOnPageError(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)V

    .line 1662
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->callbacks:Lcom/github/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/github/barteksc/pdfviewer/link/LinkHandler;

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/Callbacks;->setLinkHandler(Lcom/github/barteksc/pdfviewer/link/LinkHandler;)V

    .line 1663
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeEnabled(Z)V

    .line 1664
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setNightMode(Z)V

    .line 1665
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableDoubletap(Z)V

    .line 1666
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$400(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1667
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->landscapeOrientation:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setLandscapeOrientation(Z)V

    .line 1668
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->dualPageMode:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDualPageMode(Z)V

    .line 1669
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$500(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    .line 1670
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAnnotationRendering(Z)V

    .line 1671
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    .line 1672
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing(Z)V

    .line 1673
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$700(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 1674
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$800(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    .line 1675
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$900(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/util/FitPolicy;)V

    .line 1676
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->fitEachPage:Z

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1000(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    .line 1677
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageSnap(Z)V

    .line 1678
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFling(Z)V

    .line 1680
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    if-eqz v0, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->access$1200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public nightMode(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1637
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    return-object p0
.end method

.method public onDraw(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1517
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onDrawAll(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1522
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onError(Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1537
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    return-object p0
.end method

.method public onLoad(Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1527
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    return-object p0
.end method

.method public onLongPress(Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onLongPressListener:Lcom/github/barteksc/pdfviewer/listener/OnLongPressListener;

    return-object p0
.end method

.method public onPageChange(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1547
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object p0
.end method

.method public onPageError(Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1542
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnPageErrorListener;

    return-object p0
.end method

.method public onPageScroll(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1532
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object p0
.end method

.method public onRender(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1552
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-object p0
.end method

.method public onTap(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1557
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-object p0
.end method

.method public pageFitPolicy(Lcom/github/barteksc/pdfviewer/util/FitPolicy;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1617
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    return-object p0
.end method

.method public pageFling(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1632
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    return-object p0
.end method

.method public pageSnap(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1627
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    return-object p0
.end method

.method public varargs pages([I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1497
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1592
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    return-object p0
.end method

.method public scrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1597
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object p0
.end method

.method public spacing(I)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1607
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    return-object p0
.end method

.method public swipeHorizontal(Z)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1587
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    return-object p0
.end method
