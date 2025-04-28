.class public final Lio/legere/pdfiumandroid/suspend/FindResultKt;
.super Ljava/lang/Object;
.source "FindResultKt.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\tH\u0086@\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000e\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0011\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/suspend/FindResultKt;",
        "Ljava/io/Closeable;",
        "findResult",
        "Lio/legere/pdfiumandroid/FindResult;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lio/legere/pdfiumandroid/FindResult;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "findNext",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findPrev",
        "getSchResultIndex",
        "",
        "getSchCount",
        "closeFind",
        "",
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
.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final findResult:Lio/legere/pdfiumandroid/FindResult;


# direct methods
.method public constructor <init>(Lio/legere/pdfiumandroid/FindResult;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1

    const-string v0, "findResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->findResult:Lio/legere/pdfiumandroid/FindResult;

    .line 11
    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method

.method public static final synthetic access$getFindResult$p(Lio/legere/pdfiumandroid/suspend/FindResultKt;)Lio/legere/pdfiumandroid/FindResult;
    .locals 0

    .line 8
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->findResult:Lio/legere/pdfiumandroid/FindResult;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 40
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->findResult:Lio/legere/pdfiumandroid/FindResult;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/FindResult;->closeFind()V

    return-void
.end method

.method public final closeFind(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/FindResultKt$closeFind$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/FindResultKt$closeFind$2;-><init>(Lio/legere/pdfiumandroid/suspend/FindResultKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final findNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/FindResultKt$findNext$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/FindResultKt$findNext$2;-><init>(Lio/legere/pdfiumandroid/suspend/FindResultKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final findPrev(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/FindResultKt$findPrev$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/FindResultKt$findPrev$2;-><init>(Lio/legere/pdfiumandroid/suspend/FindResultKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSchCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/FindResultKt$getSchCount$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/FindResultKt$getSchCount$2;-><init>(Lio/legere/pdfiumandroid/suspend/FindResultKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSchResultIndex(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 24
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/FindResultKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/FindResultKt$getSchResultIndex$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/legere/pdfiumandroid/suspend/FindResultKt$getSchResultIndex$2;-><init>(Lio/legere/pdfiumandroid/suspend/FindResultKt;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
