.class public Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;
.super Ljava/lang/Object;
.source "PageSizeCalculator.java"


# instance fields
.field private fitEachPage:Z

.field private fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private heightRatio:F

.field private optimalMaxHeightPageSize:Landroid/util/SizeF;

.field private optimalMaxWidthPageSize:Landroid/util/SizeF;

.field private final originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

.field private final originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

.field private final viewSize:Lio/legere/pdfiumandroid/util/Size;

.field private widthRatio:F


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lio/legere/pdfiumandroid/util/Size;Lio/legere/pdfiumandroid/util/Size;Lio/legere/pdfiumandroid/util/Size;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 36
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    .line 37
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    .line 38
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    .line 39
    iput-boolean p5, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    .line 40
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->calculateMaxPages()V

    return-void
.end method

.method private calculateMaxPages()V
    .locals 4

    .line 73
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$github$barteksc$pdfviewer$util$FitPolicy:[I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Landroid/util/SizeF;

    .line 90
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    .line 91
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Landroid/util/SizeF;

    goto/16 :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lio/legere/pdfiumandroid/util/Size;FF)Landroid/util/SizeF;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 82
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    .line 83
    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 82
    invoke-direct {p0, v1, v2, v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lio/legere/pdfiumandroid/util/Size;FF)Landroid/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Landroid/util/SizeF;

    .line 84
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    .line 85
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lio/legere/pdfiumandroid/util/Size;FF)Landroid/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Landroid/util/SizeF;

    .line 86
    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Landroid/util/SizeF;

    .line 76
    invoke-virtual {v0}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    .line 77
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Landroid/util/SizeF;

    :goto_0
    return-void
.end method

.method private fitBoth(Lio/legere/pdfiumandroid/util/Size;FF)Landroid/util/SizeF;
    .locals 3

    .line 113
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float p1, p2, v0

    float-to-double v1, p1

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    cmpl-float v1, p1, p3

    if-lez v1, :cond_0

    mul-float/2addr v0, p3

    float-to-double p1, v0

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p2, p1

    goto :goto_0

    :cond_0
    move p3, p1

    .line 121
    :goto_0
    new-instance p1, Landroid/util/SizeF;

    invoke-direct {p1, p2, p3}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1
.end method

.method private fitHeight(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;
    .locals 2

    .line 105
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    div-float p1, p2, p1

    float-to-double v0, p1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 109
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method private fitWidth(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;
    .locals 2

    .line 97
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float p1, p2, v0

    float-to-double v0, p1

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 101
    new-instance v0, Landroid/util/SizeF;

    invoke-direct {v0, p2, p1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public calculate(Lio/legere/pdfiumandroid/util/Size;ZZ)Landroid/util/SizeF;
    .locals 3

    .line 44
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 49
    iget-boolean p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {p2}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result p2

    div-int/2addr p2, v0

    int-to-float p2, p2

    iget p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    :goto_1
    mul-float/2addr p2, p3

    goto :goto_2

    .line 51
    :cond_2
    iget-boolean p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {p2}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    goto :goto_1

    .line 53
    :goto_2
    iget-boolean p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitEachPage:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {p3}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lio/legere/pdfiumandroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float/2addr p3, v1

    .line 54
    :goto_3
    sget-object v1, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$github$barteksc$pdfviewer$util$FitPolicy:[I

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    if-eq v1, v0, :cond_5

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;

    move-result-object p1

    return-object p1

    .line 58
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lio/legere/pdfiumandroid/util/Size;FF)Landroid/util/SizeF;

    move-result-object p1

    return-object p1

    .line 56
    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lio/legere/pdfiumandroid/util/Size;F)Landroid/util/SizeF;

    move-result-object p1

    return-object p1

    .line 45
    :cond_7
    :goto_4
    new-instance p1, Landroid/util/SizeF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/SizeF;-><init>(FF)V

    return-object p1
.end method

.method public getOptimalMaxHeightPageSize()Landroid/util/SizeF;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Landroid/util/SizeF;

    return-object v0
.end method

.method public getOptimalMaxWidthPageSize()Landroid/util/SizeF;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Landroid/util/SizeF;

    return-object v0
.end method
