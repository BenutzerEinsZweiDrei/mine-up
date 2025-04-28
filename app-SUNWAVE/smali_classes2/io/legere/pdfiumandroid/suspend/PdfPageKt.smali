.class public final Lio/legere/pdfiumandroid/suspend/PdfPageKt;
.super Ljava/lang/Object;
.source "PdfPageKt.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u0016\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0012\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0013\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0016\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0017\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u0019\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001a\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001b\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001c\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\u001d\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u0010J8\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010(JJ\u0010)\u001a\u00020!2\u0006\u0010*\u001a\u00020+2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010\'\u001a\u00020\u000e2\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020-H\u0086@\u00a2\u0006\u0002\u0010/J<\u0010)\u001a\u00020!2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u00100\u001a\u00020\u00152\u0006\u00101\u001a\u00020\u00182\u0008\u0008\u0002\u0010,\u001a\u00020-2\u0008\u0008\u0002\u0010.\u001a\u00020-H\u0086@\u00a2\u0006\u0002\u00102J\u0014\u00103\u001a\u0008\u0012\u0004\u0012\u00020504H\u0086@\u00a2\u0006\u0002\u0010\u000cJF\u00106\u001a\u0002072\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u000e2\u0006\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020<H\u0086@\u00a2\u0006\u0002\u0010>JF\u0010?\u001a\u00020@2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u000e2\u0006\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020\u000e2\u0006\u0010B\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010CJ>\u0010D\u001a\u00020E2\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u000e2\u0006\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020\u0018H\u0086@\u00a2\u0006\u0002\u0010GJ>\u0010H\u001a\u00020\u00182\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000e2\u0006\u00108\u001a\u00020\u000e2\u0006\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010F\u001a\u00020EH\u0086@\u00a2\u0006\u0002\u0010IJ\u0008\u0010J\u001a\u00020!H\u0016J\u0006\u0010K\u001a\u00020-R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
        "Ljava/io/Closeable;",
        "page",
        "Lio/legere/pdfiumandroid/PdfPage;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "getPage",
        "()Lio/legere/pdfiumandroid/PdfPage;",
        "openTextPage",
        "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageWidth",
        "",
        "screenDpi",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageHeight",
        "getPageWidthPoint",
        "getPageHeightPoint",
        "getPageMatrix",
        "Landroid/graphics/Matrix;",
        "getPageRotation",
        "getPageCropBox",
        "Landroid/graphics/RectF;",
        "getPageMediaBox",
        "getPageBleedBox",
        "getPageTrimBox",
        "getPageArtBox",
        "getPageBoundingBox",
        "getPageSize",
        "Lio/legere/pdfiumandroid/util/Size;",
        "renderPage",
        "",
        "surface",
        "Landroid/view/Surface;",
        "startX",
        "startY",
        "drawSizeX",
        "drawSizeY",
        "(Landroid/view/Surface;IIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "renderPageBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "renderAnnot",
        "",
        "textMask",
        "(Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "matrix",
        "clipRect",
        "(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageLinks",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$Link;",
        "mapPageCoordsToDevice",
        "Landroid/graphics/Point;",
        "sizeX",
        "sizeY",
        "rotate",
        "pageX",
        "",
        "pageY",
        "(IIIIIDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mapDeviceCoordsToPage",
        "Landroid/graphics/PointF;",
        "deviceX",
        "deviceY",
        "(IIIIIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mapRectToDevice",
        "Landroid/graphics/Rect;",
        "coords",
        "(IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mapRectToPage",
        "(IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "close",
        "safeClose",
        "pdfiumandroid_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final page:Lio/legere/pdfiumandroid/PdfPage;


# direct methods
.method public constructor <init>(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    .line 30
    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfPageKt;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    and-int/lit8 v0, p9, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p8

    .line 160
    invoke-virtual/range {v2 .. v10}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p6

    .line 177
    invoke-virtual/range {v2 .. v8}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 265
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfPage;->close()V

    return-void
.end method

.method public final getPage()Lio/legere/pdfiumandroid/PdfPage;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    return-object v0
.end method

.method public final getPageArtBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageArtBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageArtBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageBleedBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBleedBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBleedBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageBoundingBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBoundingBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageBoundingBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageCropBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageCropBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageCropBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageHeight(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeight$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeight$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageHeightPoint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeightPoint$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageHeightPoint$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageLinks(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageLinks$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageLinks$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageMatrix(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Matrix;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMatrix$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMatrix$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageMediaBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMediaBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageMediaBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageRotation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageRotation$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageRotation$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/util/Size;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageSize$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageSize$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageTrimBox(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageTrimBox$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageTrimBox$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageWidth(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidth$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidth$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageWidthPoint(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidthPoint$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$getPageWidthPoint$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final mapDeviceCoordsToPage(IIIIIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/PointF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v10, p0

    .line 225
    iget-object v0, v10, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapDeviceCoordsToPage$2;

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapDeviceCoordsToPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIIIILkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p8

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final mapPageCoordsToDevice(IIIIIDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIDD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v12, p0

    .line 208
    iget-object v0, v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/CoroutineContext;

    new-instance v14, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapPageCoordsToDevice$2;

    const/4 v11, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapPageCoordsToDevice$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIIDDLkotlin/coroutines/Continuation;)V

    check-cast v14, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p10

    invoke-static {v13, v14, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final mapRectToDevice(IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Landroid/graphics/RectF;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    .line 241
    iget-object v0, v9, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToDevice$2;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToDevice$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIILandroid/graphics/RectF;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p7

    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final mapRectToPage(IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Landroid/graphics/Rect;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/RectF;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    .line 257
    iget-object v0, v9, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToPage$2;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$mapRectToPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;IIIIILandroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p7

    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final openTextPage(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$openTextPage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$openTextPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final renderPage(Landroid/view/Surface;IIIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "IIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 156
    iget-object v0, v8, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/view/Surface;IIIILkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p6

    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIIIZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v10, p0

    .line 173
    iget-object v0, v10, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;

    const/4 v9, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p8

    invoke-static {v11, v12, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Matrix;",
            "Landroid/graphics/RectF;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 183
    iget-object v0, v8, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$4;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$4;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZLkotlin/coroutines/Continuation;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v0, p6

    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final safeClose()Z
    .locals 4

    .line 270
    :try_start_0
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->page:Lio/legere/pdfiumandroid/PdfPage;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfPage;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "PdfPageKt"

    const-string v3, "PdfPageKt.safeClose"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
