.class public final Lio/legere/pdfiumandroid/FindResult;
.super Ljava/lang/Object;
.source "FindResult.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0011\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0082 J\u0011\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0082 J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0003H\u0082 J\u0011\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0003H\u0082 J\u0011\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0003H\u0082 J\u0006\u0010\u0012\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\nJ\u0006\u0010\u0014\u001a\u00020\u000eJ\u0006\u0010\u0015\u001a\u00020\u000eJ\u0006\u0010\u0016\u001a\u00020\u0011J\u0008\u0010\u0017\u001a\u00020\u0011H\u0016R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/FindResult;",
        "Ljava/io/Closeable;",
        "handle",
        "",
        "Lio/legere/pdfiumandroid/FindHandle;",
        "<init>",
        "(J)V",
        "getHandle",
        "()J",
        "nativeFindNext",
        "",
        "findHandle",
        "nativeFindPrev",
        "nativeGetSchResultIndex",
        "",
        "nativeGetSchCount",
        "nativeCloseFind",
        "",
        "findNext",
        "findPrev",
        "getSchResultIndex",
        "getSchCount",
        "closeFind",
        "close",
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
.field private final handle:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    return-void
.end method

.method private final native nativeCloseFind(J)V
.end method

.method private final native nativeFindNext(J)Z
.end method

.method private final native nativeFindPrev(J)Z
.end method

.method private final native nativeGetSchCount(J)I
.end method

.method private final native nativeGetSchResultIndex(J)I
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 50
    iget-wide v0, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    invoke-direct {p0, v0, v1}, Lio/legere/pdfiumandroid/FindResult;->nativeCloseFind(J)V

    return-void
.end method

.method public final closeFind()V
    .locals 3

    .line 44
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 45
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/FindResult;->nativeCloseFind(J)V

    .line 46
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final findNext()Z
    .locals 3

    .line 20
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 21
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/FindResult;->nativeFindNext(J)Z

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

.method public final findPrev()Z
    .locals 3

    .line 26
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 27
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/FindResult;->nativeFindPrev(J)Z

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

.method public final getHandle()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    return-wide v0
.end method

.method public final getSchCount()I
    .locals 3

    .line 38
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 39
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/FindResult;->nativeGetSchCount(J)I

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

.method public final getSchResultIndex()I
    .locals 3

    .line 32
    sget-object v0, Lio/legere/pdfiumandroid/PdfiumCore;->Companion:Lio/legere/pdfiumandroid/PdfiumCore$Companion;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 33
    :try_start_0
    iget-wide v1, p0, Lio/legere/pdfiumandroid/FindResult;->handle:J

    invoke-direct {p0, v1, v2}, Lio/legere/pdfiumandroid/FindResult;->nativeGetSchResultIndex(J)I

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
