.class public final Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;
.super Ljava/lang/Object;
.source "PdfDocumentKt.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\n\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0012J$\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u001bH\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0016H\u0086@\u00a2\u0006\u0002\u0010\u000cJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0010H\u0087@\u00a2\u0006\u0002\u0010!J$\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00162\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0086@\u00a2\u0006\u0002\u0010\'J\u0008\u0010(\u001a\u00020\u0014H\u0016J\u0006\u0010)\u001a\u00020$R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
        "Ljava/io/Closeable;",
        "document",
        "Lio/legere/pdfiumandroid/PdfDocument;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lio/legere/pdfiumandroid/PdfDocument;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "getDocument",
        "()Lio/legere/pdfiumandroid/PdfDocument;",
        "getPageCount",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPageCharCounts",
        "",
        "openPage",
        "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
        "pageIndex",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deletePage",
        "",
        "openPages",
        "",
        "fromIndex",
        "toIndex",
        "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDocumentMeta",
        "Lio/legere/pdfiumandroid/PdfDocument$Meta;",
        "getTableOfContents",
        "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
        "openTextPage",
        "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
        "page",
        "(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "openTextPages",
        "saveAsCopy",
        "",
        "callback",
        "Lio/legere/pdfiumandroid/PdfWriteCallback;",
        "(Lio/legere/pdfiumandroid/PdfWriteCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private final document:Lio/legere/pdfiumandroid/PdfDocument;


# direct methods
.method public constructor <init>(Lio/legere/pdfiumandroid/PdfDocument;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->document:Lio/legere/pdfiumandroid/PdfDocument;

    .line 23
    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 19
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 118
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->document:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->close()V

    return-void
.end method

.method public final deletePage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$deletePage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$deletePage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final getDocument()Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->document:Lio/legere/pdfiumandroid/PdfDocument;

    return-object v0
.end method

.method public final getDocumentMeta(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/PdfDocument$Meta;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getDocumentMeta$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getDocumentMeta$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageCharCounts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-[I>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getPageCharCounts$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getPageCharCounts$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPageCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 29
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getPageCount$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getPageCount$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getTableOfContents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getTableOfContents$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$getTableOfContents$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final openPage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final openPages(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final openTextPage(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "use PdfPageKt.openTextPage"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "page.openTextPage()"
            imports = {}
        .end subannotation
    .end annotation

    .line 90
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openTextPage$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openTextPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lio/legere/pdfiumandroid/suspend/PdfPageKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final openTextPages(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openTextPages$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openTextPages$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;IILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final safeClose()Z
    .locals 4

    .line 123
    :try_start_0
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->document:Lio/legere/pdfiumandroid/PdfDocument;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/PdfDocument;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    sget-object v1, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "PdfDocumentKt"

    const-string v3, "PdfDocumentKt.safeClose"

    invoke-virtual {v1, v2, v0, v3}, Lio/legere/pdfiumandroid/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final saveAsCopy(Lio/legere/pdfiumandroid/PdfWriteCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/PdfWriteCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$saveAsCopy$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$saveAsCopy$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;Lio/legere/pdfiumandroid/PdfWriteCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
