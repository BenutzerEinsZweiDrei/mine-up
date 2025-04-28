.class public Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;
.super Ljava/lang/Object;
.source "LinkTapEvent.java"


# instance fields
.field private documentX:F

.field private documentY:F

.field private link:Lio/legere/pdfiumandroid/PdfDocument$Link;

.field private mappedLinkRect:Landroid/graphics/RectF;

.field private originalX:F

.field private originalY:F


# direct methods
.method public constructor <init>(FFFFLandroid/graphics/RectF;Lio/legere/pdfiumandroid/PdfDocument$Link;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->originalX:F

    .line 31
    iput p2, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->originalY:F

    .line 32
    iput p3, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->documentX:F

    .line 33
    iput p4, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->documentY:F

    .line 34
    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->mappedLinkRect:Landroid/graphics/RectF;

    .line 35
    iput-object p6, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->link:Lio/legere/pdfiumandroid/PdfDocument$Link;

    return-void
.end method


# virtual methods
.method public getDocumentX()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->documentX:F

    return v0
.end method

.method public getDocumentY()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->documentY:F

    return v0
.end method

.method public getLink()Lio/legere/pdfiumandroid/PdfDocument$Link;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->link:Lio/legere/pdfiumandroid/PdfDocument$Link;

    return-object v0
.end method

.method public getMappedLinkRect()Landroid/graphics/RectF;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->mappedLinkRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOriginalX()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->originalX:F

    return v0
.end method

.method public getOriginalY()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/LinkTapEvent;->originalY:F

    return v0
.end method
