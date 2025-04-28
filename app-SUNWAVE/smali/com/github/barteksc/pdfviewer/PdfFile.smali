.class Lcom/github/barteksc/pdfviewer/PdfFile;
.super Ljava/lang/Object;
.source "PdfFile.java"


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private autoSpacing:Z

.field private documentLength:F

.field private final fitEachPage:Z

.field private final isLandscape:Z

.field private isVertical:Z

.field private maxHeightPageSize:Landroid/util/SizeF;

.field private maxWidthPageSize:Landroid/util/SizeF;

.field private openedPages:Landroid/util/SparseBooleanArray;

.field private originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

.field private originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

.field private originalPageSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private originalUserPages:[I

.field private final pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private pageOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private pageSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field private pageSpacing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private pagesCount:I

.field private pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

.field private pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

.field private showTwoPages:Z

.field private spacingPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PdfFile;->lock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lio/legere/pdfiumandroid/PdfiumCore;Lio/legere/pdfiumandroid/PdfDocument;Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lio/legere/pdfiumandroid/util/Size;[IZZIZZZ)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pagesCount:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalPageSizes:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    .line 45
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->openedPages:Landroid/util/SparseBooleanArray;

    .line 47
    new-instance v1, Lio/legere/pdfiumandroid/util/Size;

    invoke-direct {v1, v0, v0}, Lio/legere/pdfiumandroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    .line 49
    new-instance v1, Lio/legere/pdfiumandroid/util/Size;

    invoke-direct {v1, v0, v0}, Lio/legere/pdfiumandroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    .line 51
    new-instance v0, Landroid/util/SizeF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->maxHeightPageSize:Landroid/util/SizeF;

    .line 53
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, v1, v1}, Landroid/util/SizeF;-><init>(FF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->maxWidthPageSize:Landroid/util/SizeF;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageOffsets:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    .line 67
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->documentLength:F

    .line 84
    iput-boolean p6, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->showTwoPages:Z

    .line 85
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    .line 86
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    .line 87
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 88
    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalUserPages:[I

    .line 89
    iput-boolean p7, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    .line 90
    iput p8, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    .line 91
    iput-boolean p9, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->autoSpacing:Z

    .line 92
    iput-boolean p10, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->fitEachPage:Z

    .line 93
    iput-boolean p11, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isLandscape:Z

    .line 94
    invoke-direct {p0, p4}, Lcom/github/barteksc/pdfviewer/PdfFile;->setup(Lio/legere/pdfiumandroid/util/Size;)V

    return-void
.end method

.method private prepareAutoSpacing(Lio/legere/pdfiumandroid/util/Size;)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 176
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SizeF;

    const/4 v2, 0x0

    .line 178
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    :goto_1
    sub-float/2addr v3, v1

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 181
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareDocLen()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 190
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    .line 191
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    :goto_1
    add-float/2addr v0, v2

    .line 192
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->autoSpacing:Z

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_2
    add-float/2addr v0, v2

    goto :goto_3

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 195
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    int-to-float v2, v2

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_3
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->documentLength:F

    return-void
.end method

.method private preparePagesOffset()V
    .locals 6

    .line 202
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageOffsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SizeF;

    .line 206
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    .line 207
    :goto_1
    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->autoSpacing:Z

    if-eqz v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    if-nez v1, :cond_1

    .line 210
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_2

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_2

    .line 212
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 214
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageOffsets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v4

    goto :goto_3

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageOffsets:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    int-to-float v3, v3

    :goto_3
    add-float/2addr v2, v3

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setup(Lio/legere/pdfiumandroid/util/Size;)V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalUserPages:[I

    if-eqz v0, :cond_0

    .line 99
    array-length v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pagesCount:I

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->getPageCount()I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pagesCount:I

    :goto_0
    const/4 v0, 0x0

    .line 104
    :goto_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pagesCount:I

    if-ge v0, v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lio/legere/pdfiumandroid/PdfiumCore;->getPageSize(Lio/legere/pdfiumandroid/PdfDocument;I)Lio/legere/pdfiumandroid/util/Size;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 107
    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    .line 109
    :cond_1
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v3}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 110
    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalPageSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->recalculatePageSizes(Lio/legere/pdfiumandroid/util/Size;)V

    return-void
.end method


# virtual methods
.method public determineValidPageNumberFrom(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalUserPages:[I

    if-eqz v0, :cond_1

    .line 352
    array-length v1, v0

    if-lt p1, v1, :cond_2

    .line 353
    array-length p1, v0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    return p1

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result p1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public dispose()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Lio/legere/pdfiumandroid/PdfiumCore;->closeDocument(Lio/legere/pdfiumandroid/PdfDocument;)V

    :cond_0
    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    .line 336
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalUserPages:[I

    return-void
.end method

.method public documentPage(I)I
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalUserPages:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 366
    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    aget v0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, p1

    :goto_1
    if-ltz v0, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public getBookmarks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    invoke-virtual {v1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;->getTableOfContents(Lio/legere/pdfiumandroid/PdfDocument;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDocLen(F)F
    .locals 1

    .line 224
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->documentLength:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getMaxPageHeight()F
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageSize()Landroid/util/SizeF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    return v0
.end method

.method public getMaxPageSize()Landroid/util/SizeF;
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->maxWidthPageSize:Landroid/util/SizeF;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->maxHeightPageSize:Landroid/util/SizeF;

    :goto_0
    return-object v0
.end method

.method public getMaxPageWidth()F
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageSize()Landroid/util/SizeF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    return v0
.end method

.method public getMetaData()Lio/legere/pdfiumandroid/PdfDocument$Meta;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    invoke-virtual {v1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;->getDocumentMeta(Lio/legere/pdfiumandroid/PdfDocument;)Lio/legere/pdfiumandroid/PdfDocument$Meta;

    move-result-object v0

    return-object v0
.end method

.method public getPageAtOffset(FF)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPagesCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageOffsets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, v1, p2}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSpacing(IF)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public getPageLength(IF)F
    .locals 1

    .line 231
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object p1

    .line 232
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    :goto_0
    mul-float/2addr p1, p2

    return p1
.end method

.method public getPageLinks(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result p1

    .line 321
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0, v1, p1}, Lio/legere/pdfiumandroid/PdfiumCore;->getPageLinks(Lio/legere/pdfiumandroid/PdfDocument;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPageOffset(IF)F
    .locals 1

    .line 242
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageOffsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p2

    return p1
.end method

.method public getPageSize(I)Landroid/util/SizeF;
    .locals 1

    .line 145
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 147
    new-instance p1, Landroid/util/SizeF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SizeF;

    return-object p1
.end method

.method public getPageSpacing(IF)F
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->autoSpacing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSpacing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->spacingPx:I

    int-to-float p1, p1

    :goto_0
    mul-float/2addr p1, p2

    return p1
.end method

.method public getPagesCount()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pagesCount:I

    return v0
.end method

.method public getScaledPageSize(IF)Landroid/util/SizeF;
    .locals 2

    .line 153
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object p1

    .line 154
    new-instance v0, Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    mul-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public getSecondaryPageOffset(IF)F
    .locals 2

    .line 251
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->getPageSize(I)Landroid/util/SizeF;

    move-result-object p1

    .line 252
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageWidth()F

    move-result v0

    .line 254
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result p1

    :goto_0
    sub-float/2addr v0, p1

    mul-float/2addr p2, v0

    div-float/2addr p2, v1

    return p2

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->getMaxPageHeight()F

    move-result v0

    .line 257
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    goto :goto_0
.end method

.method public mapRectToDevice(IIIIILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 9

    .line 326
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result p1

    .line 327
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1, p1}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v2

    const/4 v7, 0x0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lio/legere/pdfiumandroid/PdfPage;->mapRectToDevice(IIIIILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public openPage(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 279
    :cond_0
    sget-object v2, Lcom/github/barteksc/pdfviewer/PdfFile;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 280
    :try_start_0
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->openedPages:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v3, :cond_1

    .line 282
    :try_start_1
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v3, v4, v0}, Lio/legere/pdfiumandroid/PdfiumCore;->openPage(Lio/legere/pdfiumandroid/PdfDocument;I)J

    .line 283
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->openedPages:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :try_start_2
    monitor-exit v2

    return v4

    :catch_0
    move-exception v3

    .line 286
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->openedPages:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 287
    new-instance v0, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;

    invoke-direct {v0, p1, v3}, Lcom/github/barteksc/pdfviewer/exception/PageRenderingException;-><init>(ILjava/lang/Throwable;)V

    throw v0

    .line 290
    :cond_1
    monitor-exit v2

    return v1

    :catchall_0
    move-exception p1

    .line 291
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public pageHasError(I)Z
    .locals 2

    .line 295
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->openedPages:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public recalculatePageSizes(Lio/legere/pdfiumandroid/util/Size;)V
    .locals 7

    .line 124
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    new-instance v0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageFitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    iget-boolean v6, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->fitEachPage:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;-><init>(Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lio/legere/pdfiumandroid/util/Size;Lio/legere/pdfiumandroid/util/Size;Lio/legere/pdfiumandroid/util/Size;Z)V

    .line 127
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->getOptimalMaxWidthPageSize()Landroid/util/SizeF;

    move-result-object v1

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->maxWidthPageSize:Landroid/util/SizeF;

    .line 128
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->getOptimalMaxHeightPageSize()Landroid/util/SizeF;

    move-result-object v1

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->maxHeightPageSize:Landroid/util/SizeF;

    .line 130
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->originalPageSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/legere/pdfiumandroid/util/Size;

    .line 131
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pageSizes:Ljava/util/List;

    iget-boolean v4, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->showTwoPages:Z

    iget-boolean v5, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->isLandscape:Z

    invoke-virtual {v0, v2, v4, v5}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->calculate(Lio/legere/pdfiumandroid/util/Size;ZZ)Landroid/util/SizeF;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->autoSpacing:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PdfFile;->prepareAutoSpacing(Lio/legere/pdfiumandroid/util/Size;)V

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->prepareDocLen()V

    .line 137
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PdfFile;->preparePagesOffset()V

    return-void
.end method

.method public renderPageBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Z)V
    .locals 9

    .line 300
    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/PdfFile;->documentPage(I)I

    move-result v3

    .line 301
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PdfFile;->pdfDocument:Lio/legere/pdfiumandroid/PdfDocument;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->top:I

    .line 302
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v2, p1

    move v8, p4

    .line 301
    invoke-virtual/range {v0 .. v8}, Lio/legere/pdfiumandroid/PdfiumCore;->renderPageBitmap(Lio/legere/pdfiumandroid/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    return-void
.end method
