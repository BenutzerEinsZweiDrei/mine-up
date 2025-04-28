.class public final Lio/legere/pdfiumandroid/PdfPage;
.super Ljava/lang/Object;
.source "PdfPage.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfPage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfPage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfPage.kt\nio/legere/pdfiumandroid/PdfPage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,711:1\n1#2:712\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0007\n\u0002\u0010\u0014\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 m2\u00020\u0001:\u0001mB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0082 J\u0019\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0005H\u0082 J\u0019\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0005H\u0082 J\u0011\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010 \u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010\"\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010#\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010$\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010%\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010&\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010\'\u001a\u00020!2\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J \u0010(\u001a\u0004\u0018\u00010\u00052\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0082 \u00a2\u0006\u0002\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0082 J\u001b\u0010.\u001a\u0004\u0018\u00010/2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u0082 JC\u00100\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u0014H\u0082 JS\u00108\u001a\u00020\u00162\u0006\u0010)\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u00105\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u0014H\u0082 J?\u0010<\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010=\u001a\u00020!2\u0006\u0010>\u001a\u00020/2\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u0010;\u001a\u00020\u0014H\u0082 J!\u0010?\u001a\u00020@2\u0006\u0010)\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0005H\u0082 J\u0011\u0010A\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 JI\u0010B\u001a\u00020C2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00052\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020HH\u0082 JI\u0010J\u001a\u00020K2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00052\u0006\u0010L\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0005H\u0082 J\u0006\u0010N\u001a\u00020OJ\u000e\u0010P\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\u0005J\u000e\u0010R\u001a\u00020\u00052\u0006\u0010Q\u001a\u00020\u0005J\u0006\u0010S\u001a\u00020\u0005J\u0006\u0010T\u001a\u00020\u0005J\u0008\u0010U\u001a\u0004\u0018\u00010VJ\u0006\u0010W\u001a\u00020\u0005J\u0006\u0010X\u001a\u00020/J\u0006\u0010Y\u001a\u00020/J\u0006\u0010Z\u001a\u00020/J\u0006\u0010[\u001a\u00020/J\u0006\u0010\\\u001a\u00020/J\u0006\u0010]\u001a\u00020/J\u000e\u0010^\u001a\u00020@2\u0006\u0010Q\u001a\u00020\u0005J:\u0010_\u001a\u00020\u00162\u0008\u00101\u001a\u0004\u0018\u0001022\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010`\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\u00052\u0008\u0008\u0002\u00107\u001a\u00020\u0014JD\u0010b\u001a\u00020\u00162\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010`\u001a\u00020\u00052\u0006\u0010a\u001a\u00020\u00052\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u0010;\u001a\u00020\u0014J4\u0010b\u001a\u00020\u00162\u0008\u00109\u001a\u0004\u0018\u00010:2\u0006\u0010=\u001a\u00020V2\u0006\u0010>\u001a\u00020/2\u0008\u0008\u0002\u00107\u001a\u00020\u00142\u0008\u0008\u0002\u0010;\u001a\u00020\u0014J\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020e0dJ>\u0010f\u001a\u00020C2\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00052\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020HJ>\u0010g\u001a\u00020K2\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00052\u0006\u0010L\u001a\u00020\u00052\u0006\u0010M\u001a\u00020\u0005J6\u0010h\u001a\u00020i2\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00052\u0006\u0010j\u001a\u00020/J6\u0010k\u001a\u00020/2\u0006\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u00052\u0006\u0010E\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\u00052\u0006\u0010j\u001a\u00020iJ\u0008\u0010l\u001a\u00020\u0016H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006n"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfPage;",
        "Ljava/io/Closeable;",
        "doc",
        "Lio/legere/pdfiumandroid/PdfDocument;",
        "pageIndex",
        "",
        "pagePtr",
        "",
        "pageMap",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V",
        "getDoc",
        "()Lio/legere/pdfiumandroid/PdfDocument;",
        "getPageIndex",
        "()I",
        "getPagePtr",
        "()J",
        "isClosed",
        "",
        "nativeClosePage",
        "",
        "nativeClosePages",
        "pagesPtr",
        "",
        "nativeGetPageWidthPixel",
        "dpi",
        "nativeGetPageHeightPixel",
        "nativeGetPageWidthPoint",
        "nativeGetPageHeightPoint",
        "nativeGetPageRotation",
        "nativeGetPageMediaBox",
        "",
        "nativeGetPageCropBox",
        "nativeGetPageBleedBox",
        "nativeGetPageTrimBox",
        "nativeGetPageArtBox",
        "nativeGetPageBoundingBox",
        "nativeGetPageMatrix",
        "nativeGetDestPageIndex",
        "docPtr",
        "linkPtr",
        "(JJ)Ljava/lang/Integer;",
        "nativeGetLinkURI",
        "",
        "nativeGetLinkRect",
        "Landroid/graphics/RectF;",
        "nativeRenderPage",
        "surface",
        "Landroid/view/Surface;",
        "startX",
        "startY",
        "drawSizeHor",
        "drawSizeVer",
        "renderAnnot",
        "nativeRenderPageBitmap",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "textMask",
        "nativeRenderPageBitmapWithMatrix",
        "matrix",
        "clipRect",
        "nativeGetPageSizeByIndex",
        "Lio/legere/pdfiumandroid/util/Size;",
        "nativeGetPageLinks",
        "nativePageCoordsToDevice",
        "Landroid/graphics/Point;",
        "sizeX",
        "sizeY",
        "rotate",
        "pageX",
        "",
        "pageY",
        "nativeDeviceCoordsToPage",
        "Landroid/graphics/PointF;",
        "deviceX",
        "deviceY",
        "openTextPage",
        "Lio/legere/pdfiumandroid/PdfTextPage;",
        "getPageWidth",
        "screenDpi",
        "getPageHeight",
        "getPageWidthPoint",
        "getPageHeightPoint",
        "getPageMatrix",
        "Landroid/graphics/Matrix;",
        "getPageRotation",
        "getPageCropBox",
        "getPageMediaBox",
        "getPageBleedBox",
        "getPageTrimBox",
        "getPageArtBox",
        "getPageBoundingBox",
        "getPageSize",
        "renderPage",
        "drawSizeX",
        "drawSizeY",
        "renderPageBitmap",
        "getPageLinks",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$Link;",
        "mapPageCoordsToDevice",
        "mapDeviceCoordsToPage",
        "mapRectToDevice",
        "Landroid/graphics/Rect;",
        "coords",
        "mapRectToPage",
        "close",
        "Companion",
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


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PdfPage"

.field public static final TOP:I = 0x1


# instance fields
.field private final doc:Lio/legere/pdfiumandroid/PdfDocument;

.field private isClosed:Z

.field private final pageIndex:I

.field private final pageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;"
        }
    .end annotation
.end field

.field private final pagePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/legere/pdfiumandroid/PdfPage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfPage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfPage;->Companion:Lio/legere/pdfiumandroid/PdfPage$Companion;

    return-void
.end method

.method public constructor <init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/PdfDocument;",
            "IJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "doc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageMap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    .line 24
    iput p2, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    .line 25
    iput-wide p3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    .line 26
    iput-object p5, p0, Lio/legere/pdfiumandroid/PdfPage;->pageMap:Ljava/util/Map;

    return-void
.end method

.method private final native nativeClosePage(J)V
.end method

.method private final native nativeClosePages([J)V
.end method

.method private final native nativeDeviceCoordsToPage(JIIIIIII)Landroid/graphics/PointF;
.end method

.method private final native nativeGetDestPageIndex(JJ)Ljava/lang/Integer;
.end method

.method private final native nativeGetLinkRect(JJ)Landroid/graphics/RectF;
.end method

.method private final native nativeGetLinkURI(JJ)Ljava/lang/String;
.end method

.method private final native nativeGetPageArtBox(J)[F
.end method

.method private final native nativeGetPageBleedBox(J)[F
.end method

.method private final native nativeGetPageBoundingBox(J)[F
.end method

.method private final native nativeGetPageCropBox(J)[F
.end method

.method private final native nativeGetPageHeightPixel(JI)I
.end method

.method private final native nativeGetPageHeightPoint(J)I
.end method

.method private final native nativeGetPageLinks(J)[J
.end method

.method private final native nativeGetPageMatrix(J)[F
.end method

.method private final native nativeGetPageMediaBox(J)[F
.end method

.method private final native nativeGetPageRotation(J)I
.end method

.method private final native nativeGetPageSizeByIndex(JII)Lio/legere/pdfiumandroid/util/Size;
.end method

.method private final native nativeGetPageTrimBox(J)[F
.end method

.method private final native nativeGetPageWidthPixel(JI)I
.end method

.method private final native nativeGetPageWidthPoint(J)I
.end method

.method private final native nativePageCoordsToDevice(JIIIIIDD)Landroid/graphics/Point;
.end method

.method private final native nativeRenderPage(JLandroid/view/Surface;IIIIZ)V
.end method

.method private final native nativeRenderPageBitmap(JJLandroid/graphics/Bitmap;IIIIZZ)V
.end method

.method private final native nativeRenderPageBitmapWithMatrix(JLandroid/graphics/Bitmap;[FLandroid/graphics/RectF;ZZ)V
.end method

.method static synthetic nativeRenderPageBitmapWithMatrix$default(Lio/legere/pdfiumandroid/PdfPage;JLandroid/graphics/Bitmap;[FLandroid/graphics/RectF;ZZILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 103
    invoke-direct/range {v2 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageBitmapWithMatrix(JLandroid/graphics/Bitmap;[FLandroid/graphics/RectF;ZZ)V

    return-void
.end method

.method public static synthetic renderPage$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/view/Surface;IIIIZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 399
    invoke-virtual/range {v0 .. v6}, Lio/legere/pdfiumandroid/PdfPage;->renderPage(Landroid/view/Surface;IIIIZ)V

    return-void
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/graphics/Bitmap;IIIIZZILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

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

    move v7, p5

    .line 446
    invoke-virtual/range {v2 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZ)V

    return-void
.end method

.method public static synthetic renderPageBitmap$default(Lio/legere/pdfiumandroid/PdfPage;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 472
    invoke-virtual/range {v1 .. v6}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZ)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 685
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 687
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v2, :cond_4

    .line 689
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 690
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit v0

    return-void

    .line 694
    :cond_3
    :try_start_1
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    iput-boolean v1, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    .line 697
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfPage;->nativeClosePage(J)V

    .line 688
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getDoc()Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    return-object v0
.end method

.method public final getPageArtBox()Landroid/graphics/RectF;
    .locals 5

    .line 343
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 345
    :try_start_0
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageArtBox(J)[F

    move-result-object v3

    .line 346
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 347
    aget v2, v3, v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 348
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 349
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 350
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const-string v0, "Already closed"

    .line 343
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPageBleedBox()Landroid/graphics/RectF;
    .locals 5

    .line 307
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 309
    :try_start_0
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageBleedBox(J)[F

    move-result-object v3

    .line 310
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 311
    aget v2, v3, v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 312
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 313
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 314
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const-string v0, "Already closed"

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPageBoundingBox()Landroid/graphics/RectF;
    .locals 5

    .line 361
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 363
    :try_start_0
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageBoundingBox(J)[F

    move-result-object v3

    .line 364
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 365
    aget v2, v3, v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 366
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 367
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 368
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const-string v0, "Already closed"

    .line 361
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPageCropBox()Landroid/graphics/RectF;
    .locals 5

    .line 271
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 273
    :try_start_0
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageCropBox(J)[F

    move-result-object v3

    .line 274
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 275
    aget v2, v3, v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 276
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 277
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 278
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const-string v0, "Already closed"

    .line 271
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPageHeight(I)I
    .locals 3

    .line 174
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 176
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v1, v2, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageHeightPixel(JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPageHeightPoint()I
    .locals 3

    .line 199
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    return v0

    .line 200
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 201
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageHeightPoint(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    return v0
.end method

.method public final getPageLinks()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Link;",
            ">;"
        }
    .end annotation

    .line 501
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 502
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 505
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageLinks(J)[J

    move-result-object v3

    .line 506
    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_5

    aget-wide v5, v3, v1

    .line 507
    iget-object v7, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v7}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v5, v6}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetDestPageIndex(JJ)Ljava/lang/Integer;

    move-result-object v7

    .line 508
    iget-object v8, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v8}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v5, v6}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetLinkURI(JJ)Ljava/lang/String;

    move-result-object v8

    .line 509
    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v9}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v5, v6}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetLinkRect(JJ)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_4

    if-nez v7, :cond_3

    if-eqz v8, :cond_4

    .line 511
    :cond_3
    new-instance v6, Lio/legere/pdfiumandroid/PdfDocument$Link;

    invoke-direct {v6, v5, v7, v8}, Lio/legere/pdfiumandroid/PdfDocument$Link;-><init>(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 514
    :cond_5
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageMatrix()Landroid/graphics/Matrix;
    .locals 13

    .line 207
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v3, 0x9

    :try_start_0
    new-array v3, v3, [F

    .line 218
    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v4, v5}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageMatrix(J)[F

    move-result-object v4

    .line 220
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v6, "PdfPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pageMatrix[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v6, "PdfPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pageMatrix[1] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v6, "PdfPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pageMatrix[2] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget v9, v4, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v6, "PdfPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pageMatrix[3] = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    aget v10, v4, v9

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v6, "PdfPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pageMatrix[4] = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x4

    aget v11, v4, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v5, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v6, "PdfPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pageMatrix[5] = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    aget v12, v4, v11

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    aget v5, v4, v1

    aput v5, v3, v1

    .line 228
    aget v1, v4, v2

    aput v1, v3, v2

    .line 229
    aget v1, v4, v8

    aput v1, v3, v9

    .line 230
    aget v1, v4, v9

    aput v1, v3, v10

    .line 232
    aget v1, v4, v10

    aput v1, v3, v8

    .line 233
    aget v1, v4, v11

    aput v1, v3, v11

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x7

    aput v2, v3, v1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v1

    .line 239
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 241
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setValues([F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageMediaBox()Landroid/graphics/RectF;
    .locals 5

    .line 289
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 290
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 291
    :try_start_0
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageMediaBox(J)[F

    move-result-object v3

    .line 292
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 293
    aget v2, v3, v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 294
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 295
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 296
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const-string v0, "Already closed"

    .line 289
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPagePtr()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    return-wide v0
.end method

.method public final getPageRotation()I
    .locals 3

    .line 259
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    return v0

    .line 260
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 261
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageRotation(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageSize(I)Lio/legere/pdfiumandroid/util/Size;
    .locals 4

    .line 379
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 380
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v1

    .line 383
    iget v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pageIndex:I

    .line 381
    invoke-direct {p0, v1, v2, v3, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageSizeByIndex(JII)Lio/legere/pdfiumandroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    const-string p1, "Already closed"

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPageTrimBox()Landroid/graphics/RectF;
    .locals 5

    .line 325
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 327
    :try_start_0
    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v3, v4}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageTrimBox(J)[F

    move-result-object v3

    .line 328
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 329
    aget v2, v3, v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 330
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 331
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 332
    aget v1, v3, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const-string v0, "Already closed"

    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getPageWidth(I)I
    .locals 3

    .line 160
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, -0x1

    return p1

    .line 162
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v1, v2, p1}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageWidthPixel(JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPageWidthPoint()I
    .locals 3

    .line 187
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    return v0

    .line 188
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 189
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfPage;->nativeGetPageWidthPoint(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final mapDeviceCoordsToPage(IIIIIII)Landroid/graphics/PointF;
    .locals 11

    move-object v10, p0

    .line 570
    iget-boolean v0, v10, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, v10, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 572
    iget-wide v1, v10, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 571
    invoke-direct/range {v0 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->nativeDeviceCoordsToPage(JIIIIIII)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 570
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;
    .locals 13

    move-object v12, p0

    .line 542
    iget-boolean v0, v12, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, v12, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 543
    iget-wide v1, v12, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lio/legere/pdfiumandroid/PdfPage;->nativePageCoordsToDevice(JIIIIIDD)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    .line 542
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mapRectToDevice(IIIIILandroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 13

    move-object v10, p0

    move-object/from16 v11, p6

    const-string v0, "coords"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iget-boolean v0, v10, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, v10, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 615
    iget v0, v11, Landroid/graphics/RectF;->left:F

    float-to-double v6, v0

    .line 616
    iget v0, v11, Landroid/graphics/RectF;->top:F

    float-to-double v8, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 609
    invoke-virtual/range {v0 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;

    move-result-object v12

    .line 625
    iget v0, v11, Landroid/graphics/RectF;->right:F

    float-to-double v6, v0

    .line 626
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    float-to-double v8, v0

    move-object v0, p0

    .line 619
    invoke-virtual/range {v0 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->mapPageCoordsToDevice(IIIIIDD)Landroid/graphics/Point;

    move-result-object v0

    .line 628
    new-instance v1, Landroid/graphics/Rect;

    .line 629
    iget v2, v12, Landroid/graphics/Point;->x:I

    .line 630
    iget v3, v12, Landroid/graphics/Point;->y:I

    .line 631
    iget v4, v0, Landroid/graphics/Point;->x:I

    .line 632
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 628
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 607
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final mapRectToPage(IIIIILandroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 9

    const-string v0, "coords"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 665
    iget v7, p6, Landroid/graphics/Rect;->left:I

    .line 666
    iget v8, p6, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 659
    invoke-virtual/range {v1 .. v8}, Lio/legere/pdfiumandroid/PdfPage;->mapDeviceCoordsToPage(IIIIIII)Landroid/graphics/PointF;

    move-result-object v0

    .line 675
    iget v7, p6, Landroid/graphics/Rect;->right:I

    .line 676
    iget v8, p6, Landroid/graphics/Rect;->bottom:I

    .line 669
    invoke-virtual/range {v1 .. v8}, Lio/legere/pdfiumandroid/PdfPage;->mapDeviceCoordsToPage(IIIIIII)Landroid/graphics/PointF;

    move-result-object p1

    .line 678
    new-instance p2, Landroid/graphics/RectF;

    iget p3, v0, Landroid/graphics/PointF;->x:F

    iget p4, v0, Landroid/graphics/PointF;->y:F

    iget p5, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p2, p3, p4, p5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p2

    .line 657
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final openTextPage()Lio/legere/pdfiumandroid/PdfTextPage;
    .locals 1

    .line 151
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0, p0}, Lio/legere/pdfiumandroid/PdfDocument;->openTextPage(Lio/legere/pdfiumandroid/PdfPage;)Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object v0

    return-object v0
.end method

.method public final renderPage(Landroid/view/Surface;IIIIZ)V
    .locals 12

    move-object v10, p0

    .line 408
    iget-boolean v0, v10, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, v10, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 409
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 413
    :try_start_0
    iget-wide v2, v10, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 412
    invoke-direct/range {v1 .. v9}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPage(JLandroid/view/Surface;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 424
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v2, "PdfPage"

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 422
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    const-string v2, "PdfPage"

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "mContext may be null"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 426
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    monitor-exit v11

    return-void

    :goto_3
    monitor-exit v11

    throw v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZ)V
    .locals 15

    move-object v13, p0

    .line 456
    iget-boolean v0, v13, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, v13, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 457
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 459
    :try_start_0
    iget-object v0, v13, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->getMNativeDocPtr()J

    move-result-wide v2

    .line 460
    iget-wide v4, v13, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    move-object v1, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    .line 458
    invoke-direct/range {v1 .. v12}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageBitmap(JJLandroid/graphics/Bitmap;IIIIZZ)V

    .line 469
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14

    throw v0
.end method

.method public final renderPageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/RectF;ZZ)V
    .locals 11

    move-object v9, p0

    move-object v0, p2

    const-string v1, "matrix"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clipRect"

    move-object v6, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-boolean v1, v9, Lio/legere/pdfiumandroid/PdfPage;->isClosed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, v9, Lio/legere/pdfiumandroid/PdfPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 481
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 482
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 484
    :try_start_0
    iget-wide v4, v9, Lio/legere/pdfiumandroid/PdfPage;->pagePtr:J

    const/4 v0, 0x4

    new-array v7, v0, [F

    .line 487
    aget v8, v1, v3

    aput v8, v7, v3

    .line 488
    aget v0, v1, v0

    aput v0, v7, v2

    const/4 v0, 0x2

    .line 489
    aget v2, v1, v0

    aput v2, v7, v0

    const/4 v0, 0x3

    const/4 v2, 0x5

    .line 490
    aget v1, v1, v2

    aput v1, v7, v0

    move-object v1, p0

    move-wide v2, v4

    move-object v4, p1

    move-object v5, v7

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    .line 483
    invoke-direct/range {v1 .. v8}, Lio/legere/pdfiumandroid/PdfPage;->nativeRenderPageBitmapWithMatrix(JLandroid/graphics/Bitmap;[FLandroid/graphics/RectF;ZZ)V

    .line 496
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method
