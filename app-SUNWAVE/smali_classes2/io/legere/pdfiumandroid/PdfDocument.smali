.class public final Lio/legere/pdfiumandroid/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/PdfDocument$Bookmark;,
        Lio/legere/pdfiumandroid/PdfDocument$Companion;,
        Lio/legere/pdfiumandroid/PdfDocument$Link;,
        Lio/legere/pdfiumandroid/PdfDocument$Meta;,
        Lio/legere/pdfiumandroid/PdfDocument$PageCount;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfDocument.kt\nio/legere/pdfiumandroid/PdfDocument\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,344:1\n1#2:345\n11205#3:346\n11540#3,3:347\n11295#3:350\n11418#3,4:351\n*S KotlinDebug\n*F\n+ 1 PdfDocument.kt\nio/legere/pdfiumandroid/PdfDocument\n*L\n162#1:346\n162#1:347,3\n266#1:350\n266#1:351,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 M2\u00020\u0001:\u0005IJKLMB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0011\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 J\u0019\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\nH\u0082 J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\nH\u0082 J\u0011\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 J!\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nH\u0082 J\u0019\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001dH\u0082 J\"\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010\u0003H\u0082 \u00a2\u0006\u0002\u0010!J \u0010\"\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0082 \u00a2\u0006\u0002\u0010#J\u0019\u0010$\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u0003H\u0082 J\u0019\u0010%\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0003H\u0082 J\u0011\u0010\'\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u0003H\u0082 J!\u0010(\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\nH\u0082 J\u0011\u0010,\u001a\u00020-2\u0006\u0010\u0012\u001a\u00020\u0003H\u0082 J\u0006\u00104\u001a\u00020\nJ\u0006\u00105\u001a\u00020-J\u000e\u00106\u001a\u0002072\u0006\u0010\u0014\u001a\u00020\nJ\u000e\u00108\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\nJ\u001c\u00109\u001a\u0008\u0012\u0004\u0012\u0002070:2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nJ\u0006\u0010;\u001a\u00020<J&\u0010=\u001a\u00020\u00162\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020@0?2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010A\u001a\u00020\u0003H\u0002J\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020@0:J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u000207H\u0007J\u001c\u0010F\u001a\u0008\u0012\u0004\u0012\u00020D0:2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\nJ\u0018\u0010G\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020*2\u0008\u0008\u0002\u0010+\u001a\u00020\nJ\u0008\u0010H\u001a\u00020\u0016H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103\u00a8\u0006N"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfDocument;",
        "Ljava/io/Closeable;",
        "mNativeDocPtr",
        "",
        "<init>",
        "(J)V",
        "getMNativeDocPtr",
        "()J",
        "pageMap",
        "",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
        "textPageMap",
        "value",
        "",
        "isClosed",
        "()Z",
        "nativeGetPageCount",
        "docPtr",
        "nativeLoadPage",
        "pageIndex",
        "nativeDeletePage",
        "",
        "nativeCloseDocument",
        "nativeLoadPages",
        "",
        "fromIndex",
        "toIndex",
        "nativeGetDocumentMetaText",
        "",
        "tag",
        "nativeGetFirstChildBookmark",
        "bookmarkPtr",
        "(JLjava/lang/Long;)Ljava/lang/Long;",
        "nativeGetSiblingBookmark",
        "(JJ)Ljava/lang/Long;",
        "nativeGetBookmarkDestIndex",
        "nativeLoadTextPage",
        "pagePtr",
        "nativeGetBookmarkTitle",
        "nativeSaveAsCopy",
        "callback",
        "Lio/legere/pdfiumandroid/PdfWriteCallback;",
        "flags",
        "nativeGetPageCharCounts",
        "",
        "parcelFileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "getParcelFileDescriptor",
        "()Landroid/os/ParcelFileDescriptor;",
        "setParcelFileDescriptor",
        "(Landroid/os/ParcelFileDescriptor;)V",
        "getPageCount",
        "getPageCharCounts",
        "openPage",
        "Lio/legere/pdfiumandroid/PdfPage;",
        "deletePage",
        "openPages",
        "",
        "getDocumentMeta",
        "Lio/legere/pdfiumandroid/PdfDocument$Meta;",
        "recursiveGetBookmark",
        "tree",
        "",
        "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
        "level",
        "getTableOfContents",
        "openTextPage",
        "Lio/legere/pdfiumandroid/PdfTextPage;",
        "page",
        "openTextPages",
        "saveAsCopy",
        "close",
        "Meta",
        "Bookmark",
        "Link",
        "PageCount",
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
.field public static final Companion:Lio/legere/pdfiumandroid/PdfDocument$Companion;

.field public static final FPDF_INCREMENTAL:I = 0x1

.field public static final FPDF_NO_INCREMENTAL:I = 0x2

.field public static final FPDF_REMOVE_SECURITY:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isClosed:Z

.field private final mNativeDocPtr:J

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

.field private parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final textPageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/legere/pdfiumandroid/PdfDocument$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/legere/pdfiumandroid/PdfDocument$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/PdfDocument;->Companion:Lio/legere/pdfiumandroid/PdfDocument$Companion;

    .line 337
    const-class v0, Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/legere/pdfiumandroid/PdfDocument;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    .line 19
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    return-void
.end method

.method private final native nativeCloseDocument(J)V
.end method

.method private final native nativeDeletePage(JI)V
.end method

.method private final native nativeGetBookmarkDestIndex(JJ)J
.end method

.method private final native nativeGetBookmarkTitle(J)Ljava/lang/String;
.end method

.method private final native nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private final native nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;
.end method

.method private final native nativeGetPageCharCounts(J)[I
.end method

.method private final native nativeGetPageCount(J)I
.end method

.method private final native nativeGetSiblingBookmark(JJ)Ljava/lang/Long;
.end method

.method private final native nativeLoadPage(JI)J
.end method

.method private final native nativeLoadPages(JII)[J
.end method

.method private final native nativeLoadTextPage(JJ)J
.end method

.method private final native nativeSaveAsCopy(JLio/legere/pdfiumandroid/PdfWriteCallback;I)Z
.end method

.method private final recursiveGetBookmark(Ljava/util/List;JJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;JJ)V"
        }
    .end annotation

    move-object v6, p0

    move-wide/from16 v7, p2

    .line 192
    iget-boolean v0, v6, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    new-instance v0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;

    invoke-direct {v0}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;-><init>()V

    .line 195
    invoke-virtual {v0, v7, v8}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->setMNativePtr(J)V

    .line 196
    invoke-direct {p0, v7, v8}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetBookmarkTitle(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->setTitle(Ljava/lang/String;)V

    .line 197
    iget-wide v1, v6, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, v7, v8}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetBookmarkDestIndex(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->setPageIdx(J)V

    move-object v9, p1

    .line 198
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-wide v1, v6, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v10, 0x10

    if-eqz v1, :cond_1

    cmp-long v2, p4, v10

    if-gez v2, :cond_1

    .line 201
    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v0, 0x1

    add-long v12, p4, v0

    move-object v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lio/legere/pdfiumandroid/PdfDocument;->recursiveGetBookmark(Ljava/util/List;JJ)V

    move-wide v4, v12

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p4

    .line 203
    :goto_0
    iget-wide v0, v6, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v0, v1, v7, v8}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetSiblingBookmark(JJ)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    cmp-long v1, v4, v10

    if-gez v1, :cond_2

    .line 205
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/legere/pdfiumandroid/PdfDocument;->recursiveGetBookmark(Ljava/util/List;JJ)V

    :cond_2
    return-void
.end method

.method public static synthetic saveAsCopy$default(Lio/legere/pdfiumandroid/PdfDocument;Lio/legere/pdfiumandroid/PdfWriteCallback;IILjava/lang/Object;)Z
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    .line 284
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->saveAsCopy(Lio/legere/pdfiumandroid/PdfWriteCallback;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 297
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    sget-object v1, Lio/legere/pdfiumandroid/PdfDocument;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "PdfDocument.close"

    invoke-virtual {v0, v1, v2}, Lio/legere/pdfiumandroid/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 300
    :try_start_0
    iput-boolean v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    .line 301
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeCloseDocument(J)V

    .line 302
    iget-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_1
    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 304
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final deletePage(I)V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1}, Lio/legere/pdfiumandroid/PdfDocument;->nativeDeletePage(JI)V

    .line 139
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getDocumentMeta()Lio/legere/pdfiumandroid/PdfDocument$Meta;
    .locals 5

    .line 172
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/legere/pdfiumandroid/PdfDocument$Meta;

    invoke-direct {v0}, Lio/legere/pdfiumandroid/PdfDocument$Meta;-><init>()V

    return-object v0

    .line 173
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 174
    :try_start_0
    new-instance v1, Lio/legere/pdfiumandroid/PdfDocument$Meta;

    invoke-direct {v1}, Lio/legere/pdfiumandroid/PdfDocument$Meta;-><init>()V

    .line 175
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Title"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setTitle(Ljava/lang/String;)V

    .line 176
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Author"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setAuthor(Ljava/lang/String;)V

    .line 177
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Subject"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setSubject(Ljava/lang/String;)V

    .line 178
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Keywords"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setKeywords(Ljava/lang/String;)V

    .line 179
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Creator"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setCreator(Ljava/lang/String;)V

    .line 180
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Producer"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setProducer(Ljava/lang/String;)V

    .line 181
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "CreationDate"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setCreationDate(Ljava/lang/String;)V

    .line 182
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const-string v4, "ModDate"

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/legere/pdfiumandroid/PdfDocument$Meta;->setModDate(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getMNativeDocPtr()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    return-wide v0
.end method

.method public final getPageCharCounts()[I
    .locals 3

    .line 98
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0

    .line 100
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetPageCharCounts(J)[I

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getPageCount()I
    .locals 3

    .line 87
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 89
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetPageCount(J)I

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

.method public final getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final getTableOfContents()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 218
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 219
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lio/legere/pdfiumandroid/PdfDocument;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lio/legere/pdfiumandroid/PdfDocument;->recursiveGetBookmark(Ljava/util/List;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isClosed()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    return v0
.end method

.method public final openPage(I)Lio/legere/pdfiumandroid/PdfPage;
    .locals 10

    .line 113
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 114
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V

    .line 119
    new-instance v1, Lio/legere/pdfiumandroid/PdfPage;

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getPagePtr()J

    move-result-wide v7

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 124
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3, p1}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadPage(JI)J

    move-result-wide v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    new-instance v4, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    invoke-direct {v4, v7, v8, v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;-><init>(JI)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Lio/legere/pdfiumandroid/PdfPage;

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    const-string p1, "Already closed"

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openPages(II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfPage;",
            ">;"
        }
    .end annotation

    .line 153
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 155
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadPages(JII)[J

    move-result-object v1

    .line 158
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-wide v5, v1, v4

    if-gt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 346
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    array-length v2, v1

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 347
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-wide v7, v1, v3

    .line 162
    new-instance v10, Lio/legere/pdfiumandroid/PdfPage;

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->pageMap:Ljava/util/Map;

    move-object v4, v10

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V

    .line 348
    invoke-interface {p2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 349
    :cond_2
    check-cast p2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final openTextPage(Lio/legere/pdfiumandroid/PdfPage;)Lio/legere/pdfiumandroid/PdfTextPage;
    .locals 12
    .annotation runtime Lkotlin/Deprecated;
        message = "Use PdfPage.openTextPage instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.openTextPage()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getCount()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->setCount(I)V

    .line 241
    new-instance v1, Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v6

    invoke-virtual {v2}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->getPagePtr()J

    move-result-wide v7

    iget-object v9, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lio/legere/pdfiumandroid/PdfTextPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 245
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPagePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadTextPage(JJ)J

    move-result-wide v9

    .line 246
    iget-object v2, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    invoke-direct {v4, v9, v10, v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;-><init>(JI)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Lio/legere/pdfiumandroid/PdfTextPage;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/PdfPage;->getPageIndex()I

    move-result v8

    iget-object v11, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lio/legere/pdfiumandroid/PdfTextPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    const-string p1, "Already closed"

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openTextPages(II)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfTextPage;",
            ">;"
        }
    .end annotation

    .line 262
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 264
    :cond_0
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 265
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v1, v2, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeLoadPages(JII)[J

    move-result-object p2

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 352
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v8, p2, v3

    add-int/lit8 v11, v4, 0x1

    .line 267
    new-instance v12, Lio/legere/pdfiumandroid/PdfTextPage;

    add-int v7, p1, v4

    .line 271
    iget-object v10, p0, Lio/legere/pdfiumandroid/PdfDocument;->textPageMap:Ljava/util/Map;

    move-object v5, v12

    move-object v6, p0

    .line 267
    invoke-direct/range {v5 .. v10}, Lio/legere/pdfiumandroid/PdfTextPage;-><init>(Lio/legere/pdfiumandroid/PdfDocument;IJLjava/util/Map;)V

    .line 353
    invoke-interface {v1, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v11

    goto :goto_0

    .line 354
    :cond_1
    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final saveAsCopy(Lio/legere/pdfiumandroid/PdfWriteCallback;I)Z
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->isClosed:Z

    invoke-static {v0}, Lio/legere/pdfiumandroid/util/ConfigKt;->handleAlreadyClosed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 289
    :cond_0
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lio/legere/pdfiumandroid/PdfDocument;->nativeSaveAsCopy(JLio/legere/pdfiumandroid/PdfWriteCallback;I)Z

    move-result p1

    return p1
.end method

.method public final setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
