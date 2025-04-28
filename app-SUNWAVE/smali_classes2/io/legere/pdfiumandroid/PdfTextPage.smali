.class public final Lio/legere/pdfiumandroid/PdfTextPage;
.super Ljava/lang/Object;
.source "PdfTextPage.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfTextPage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfTextPage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTextPage.kt\nio/legere/pdfiumandroid/PdfTextPage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,422:1\n1#2:423\n1797#3,3:424\n*S KotlinDebug\n*F\n+ 1 PdfTextPage.kt\nio/legere/pdfiumandroid/PdfTextPage\n*L\n384#1:424,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0013\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 N2\u00020\u0001:\u0001NB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0082 J\u0011\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007H\u0082 J)\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001fH\u0082 J)\u0010 \u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020!H\u0082 J\u0019\u0010\"\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0005H\u0082 J\u0019\u0010$\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0005H\u0082 J1\u0010&\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020(H\u0082 J!\u0010,\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005H\u0082 J\u0019\u0010-\u001a\u00020%2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0005H\u0082 J\u0019\u0010/\u001a\u00020(2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0005H\u0082 J9\u00101\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u00102\u001a\u00020(2\u0006\u00103\u001a\u00020(2\u0006\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020(2\u0006\u00106\u001a\u00020\u001fH\u0082 J)\u00107\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0005H\u0082 J\u0006\u0010;\u001a\u00020\u0005J\u0018\u0010<\u001a\u0004\u0018\u0001092\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005J\u0018\u0010>\u001a\u0004\u0018\u0001092\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020@2\u0006\u0010#\u001a\u00020\u0005J\u0010\u0010A\u001a\u0004\u0018\u00010B2\u0006\u0010#\u001a\u00020\u0005J&\u0010C\u001a\u00020\u00052\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020(2\u0006\u0010+\u001a\u00020(J\u0016\u0010D\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u0005J\u0010\u0010E\u001a\u0004\u0018\u00010B2\u0006\u0010.\u001a\u00020\u0005J\u0018\u0010F\u001a\u0004\u0018\u0001092\u0006\u0010G\u001a\u00020B2\u0006\u0010=\u001a\u00020\u0005J\u000e\u0010H\u001a\u00020(2\u0006\u00100\u001a\u00020\u0005J&\u0010I\u001a\u0004\u0018\u00010J2\u0006\u00108\u001a\u0002092\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020L0K2\u0006\u0010\u001c\u001a\u00020\u0005J\u0008\u0010M\u001a\u00020\u0018H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfTextPage;",
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
        "getPageMap",
        "()Ljava/util/Map;",
        "isClosed",
        "",
        "nativeCloseTextPage",
        "",
        "nativeTextCountChars",
        "textPagePtr",
        "nativeTextGetText",
        "startIndex",
        "count",
        "result",
        "",
        "nativeTextGetTextByteArray",
        "",
        "nativeTextGetUnicode",
        "index",
        "nativeTextGetCharBox",
        "",
        "nativeTextGetCharIndexAtPos",
        "x",
        "",
        "y",
        "xTolerance",
        "yTolerance",
        "nativeTextCountRects",
        "nativeTextGetRect",
        "rectIndex",
        "nativeGetFontSize",
        "charIndex",
        "nativeTextGetBoundedText",
        "left",
        "top",
        "right",
        "bottom",
        "arr",
        "nativeFindStart",
        "findWhat",
        "",
        "flags",
        "textPageCountChars",
        "textPageGetTextLegacy",
        "length",
        "textPageGetText",
        "textPageGetUnicode",
        "",
        "textPageGetCharBox",
        "Landroid/graphics/RectF;",
        "textPageGetCharIndexAtPos",
        "textPageCountRects",
        "textPageGetRect",
        "textPageGetBoundedText",
        "rect",
        "getFontSize",
        "findStart",
        "Lio/legere/pdfiumandroid/FindResult;",
        "",
        "Lio/legere/pdfiumandroid/FindFlags;",
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
.field public static final Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

.field private static final TAG:Ljava/lang/String;


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

    new-instance v0, Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfTextPage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfTextPage;->Companion:Lio/legere/pdfiumandroid/PdfTextPage$Companion;

    .line 410
    const-class v0, Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

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
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    .line 24
    iput p2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    .line 25
    iput-wide p3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 26
    iput-object p5, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    return-void
.end method

.method private final native nativeCloseTextPage(J)V
.end method

.method private final native nativeFindStart(JLjava/lang/String;II)J
.end method

.method private final native nativeGetFontSize(JI)D
.end method

.method private final native nativeTextCountChars(J)I
.end method

.method private final native nativeTextCountRects(JII)I
.end method

.method private final native nativeTextGetBoundedText(JDDDD[S)I
.end method

.method private final native nativeTextGetCharBox(JI)[D
.end method

.method private final native nativeTextGetCharIndexAtPos(JDDDD)I
.end method

.method private final native nativeTextGetRect(JI)[D
.end method

.method private final native nativeTextGetText(JII[S)I
.end method

.method private final native nativeTextGetTextByteArray(JII[B)I
.end method

.method private final native nativeTextGetUnicode(JI)I
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 393
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    .line 395
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v2, :cond_4

    .line 397
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 398
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit v0

    return-void

    .line 401
    :cond_3
    :try_start_1
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    iget v3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iput-boolean v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    .line 404
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeCloseTextPage(J)V

    .line 396
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final findStart(Ljava/lang/String;Ljava/util/Set;I)Lio/legere/pdfiumandroid/FindResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lio/legere/pdfiumandroid/FindFlags;",
            ">;I)",
            "Lio/legere/pdfiumandroid/FindResult;"
        }
    .end annotation

    const-string v0, "findWhat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 p1, 0x0

    return-object p1

    .line 383
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 384
    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    .line 425
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v6, v1

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/legere/pdfiumandroid/FindFlags;

    .line 384
    invoke-virtual {v1}, Lio/legere/pdfiumandroid/FindFlags;->getValue()I

    move-result v1

    or-int/2addr v6, v1

    goto :goto_2

    .line 385
    :cond_3
    new-instance p2, Lio/legere/pdfiumandroid/FindResult;

    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move-object v2, p0

    move-object v5, p1

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeFindStart(JLjava/lang/String;II)J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lio/legere/pdfiumandroid/FindResult;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDoc()Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    return-object v0
.end method

.method public final getFontSize(I)D
    .locals 3

    .line 371
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const-wide/16 v0, 0x0

    return-wide v0

    .line 372
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-direct {p0, v1, v2, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeGetFontSize(JI)D

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getPageIndex()I
    .locals 1

    .line 24
    iget v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageIndex:I

    return v0
.end method

.method public final getPageMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pageMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getPagePtr()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    return-wide v0
.end method

.method public final textPageCountChars()I
    .locals 3

    .line 105
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    .line 106
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 107
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextCountChars(J)I

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

.method public final textPageCountRects(II)I
    .locals 3

    .line 276
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 280
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 279
    invoke-direct {p0, v1, v2, p1, p2}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextCountRects(JII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 287
    :try_start_1
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Exception throw from native"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 285
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "mContext may be null"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 289
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :goto_2
    monitor-exit v0

    throw p1

    :cond_1
    const-string p1, "Already closed"

    .line 276
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final textPageGetBoundedText(Landroid/graphics/RectF;I)Ljava/lang/String;
    .locals 18

    move-object/from16 v13, p0

    move-object/from16 v0, p1

    const-string v1, "rect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-boolean v1, v13, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v1, :cond_1

    iget-object v1, v13, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v14

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v15

    :goto_1
    invoke-static {v1}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_2

    return-object v16

    .line 334
    :cond_2
    sget-object v1, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    add-int/lit8 v1, p2, 0x1

    .line 336
    :try_start_0
    new-array v12, v1, [S

    .line 339
    iget-wide v2, v13, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 340
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v1

    .line 341
    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v6, v1

    .line 342
    iget v1, v0, Landroid/graphics/RectF;->right:F

    float-to-double v8, v1

    .line 343
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, v0

    move-object/from16 v1, p0

    move-object v0, v12

    .line 338
    invoke-direct/range {v1 .. v12}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetBoundedText(JDDDD[S)I

    move-result v1

    sub-int/2addr v1, v15

    mul-int/lit8 v2, v1, 0x2

    .line 346
    new-array v2, v2, [B

    .line 347
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 348
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v14, v1, :cond_3

    .line 350
    aget-short v4, v0, v14

    .line 351
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 353
    :cond_3
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string v1, "UTF_16LE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 358
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 355
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "mContext may be null"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :goto_3
    monitor-exit v17

    return-object v16

    :goto_4
    monitor-exit v17

    throw v0
.end method

.method public final textPageGetCharBox(I)Landroid/graphics/RectF;
    .locals 7

    .line 210
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return-object v3

    .line 211
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 214
    :try_start_0
    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-direct {p0, v4, v5, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetCharBox(JI)[D

    move-result-object p1

    .line 217
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 218
    aget-wide v5, p1, v1

    double-to-float v1, v5

    iput v1, v4, Landroid/graphics/RectF;->left:F

    .line 219
    aget-wide v1, p1, v2

    double-to-float v1, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x2

    .line 220
    aget-wide v1, p1, v1

    double-to-float v1, v1

    iput v1, v4, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x3

    .line 221
    aget-wide v1, p1, v1

    double-to-float p1, v1

    iput p1, v4, Landroid/graphics/RectF;->top:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 226
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v4, "Exception throw from native"

    invoke-virtual {v1, v2, p1, v4}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 224
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v4, "mContext may be null"

    invoke-virtual {v1, v2, p1, v4}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 228
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit v0

    return-object v3

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public final textPageGetCharIndexAtPos(DDDD)I
    .locals 15

    move-object v12, p0

    .line 248
    iget-boolean v0, v12, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, v12, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v13, -0x1

    if-eqz v0, :cond_2

    return v13

    .line 249
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 252
    :try_start_0
    iget-wide v2, v12, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move-object v1, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 251
    invoke-direct/range {v1 .. v11}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetCharIndexAtPos(JDDDD)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    return v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 259
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 261
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    monitor-exit v14

    return v13

    :goto_2
    monitor-exit v14

    throw v0
.end method

.method public final textPageGetRect(I)Landroid/graphics/RectF;
    .locals 7

    .line 301
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return-object v3

    .line 302
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 305
    :try_start_0
    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    invoke-direct {p0, v4, v5, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetRect(JI)[D

    move-result-object p1

    .line 306
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 307
    aget-wide v5, p1, v1

    double-to-float v1, v5

    iput v1, v4, Landroid/graphics/RectF;->left:F

    .line 308
    aget-wide v1, p1, v2

    double-to-float v1, v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x2

    .line 309
    aget-wide v1, p1, v1

    double-to-float v1, v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    const/4 v1, 0x3

    .line 310
    aget-wide v1, p1, v1

    double-to-float p1, v1

    iput p1, v4, Landroid/graphics/RectF;->bottom:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 316
    :try_start_1
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v4, "Exception throw from native"

    invoke-virtual {v1, v2, p1, v4}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 313
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v4, "mContext may be null"

    invoke-virtual {v1, v2, p1, v4}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :goto_2
    monitor-exit v0

    return-object v3

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public final textPageGetText(II)Ljava/lang/String;
    .locals 9

    .line 161
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 162
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    mul-int/lit8 v2, p2, 0x2

    .line 164
    :try_start_0
    new-array v2, v2, [B

    .line 167
    iget-wide v4, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move-object v3, p0

    move v6, p1

    move v7, p2

    move-object v8, v2

    .line 166
    invoke-direct/range {v3 .. v8}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetTextByteArray(JII[B)I

    move-result p1

    if-gtz p1, :cond_3

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit v0

    return-object p1

    .line 176
    :cond_3
    :try_start_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string p2, "UTF_16LE"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 180
    :try_start_2
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "Exception throw from native"

    invoke-virtual {p2, v2, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 178
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v2, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "mContext may be null"

    invoke-virtual {p2, v2, p1, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public final textPageGetTextLegacy(II)Ljava/lang/String;
    .locals 11

    .line 123
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

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

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return-object v3

    .line 124
    :cond_2
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    add-int/lit8 v4, p2, 0x1

    .line 126
    :try_start_0
    new-array v4, v4, [S

    .line 129
    iget-wide v6, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    move-object v5, p0

    move v8, p1

    move v9, p2

    move-object v10, v4

    .line 128
    invoke-direct/range {v5 .. v10}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetText(JII[S)I

    move-result p1

    if-gtz p1, :cond_3

    const-string p1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit v0

    return-object p1

    :cond_3
    sub-int/2addr p1, v2

    mul-int/lit8 p2, p1, 0x2

    .line 139
    :try_start_1
    new-array p2, p2, [B

    .line 140
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 141
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v1, p1, :cond_4

    .line 143
    aget-short v5, v4, v1

    .line 144
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :cond_4
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string v1, "UTF_16LE"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 150
    :try_start_2
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Exception throw from native"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 148
    sget-object p2, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfTextPage;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "mContext may be null"

    invoke-virtual {p2, v1, p1, v2}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :goto_3
    monitor-exit v0

    return-object v3

    :goto_4
    monitor-exit v0

    throw p1
.end method

.method public final textPageGetUnicode(I)C
    .locals 3

    .line 193
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->isClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfTextPage;->doc:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 196
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfTextPage;->pagePtr:J

    .line 195
    invoke-direct {p0, v1, v2, p1}, Lio/legere/pdfiumandroid/PdfTextPage;->nativeTextGetUnicode(JI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-char p1, p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    const-string p1, "Already closed"

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
