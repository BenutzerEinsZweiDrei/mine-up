.class public final Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;
.super Ljava/lang/Object;
.source "PdfiumCoreKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0002\u0010\u000eJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J\"\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "config",
        "Lio/legere/pdfiumandroid/util/Config;",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lio/legere/pdfiumandroid/util/Config;)V",
        "coreInternal",
        "Lio/legere/pdfiumandroid/PdfiumCore;",
        "newDocument",
        "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
        "fd",
        "Landroid/os/ParcelFileDescriptor;",
        "(Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "password",
        "",
        "(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "data",
        "",
        "([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "([BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final coreInternal:Lio/legere/pdfiumandroid/PdfiumCore;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lio/legere/pdfiumandroid/util/Config;)V
    .locals 2

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    new-instance p1, Lio/legere/pdfiumandroid/PdfiumCore;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1, v0}, Lio/legere/pdfiumandroid/PdfiumCore;-><init>(Landroid/content/Context;Lio/legere/pdfiumandroid/util/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->coreInternal:Lio/legere/pdfiumandroid/PdfiumCore;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lio/legere/pdfiumandroid/util/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 20
    new-instance p2, Lio/legere/pdfiumandroid/util/Config;

    const/4 p3, 0x3

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p4}, Lio/legere/pdfiumandroid/util/Config;-><init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lio/legere/pdfiumandroid/util/Config;)V

    return-void
.end method

.method public static final synthetic access$getCoreInternal$p(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;)Lio/legere/pdfiumandroid/PdfiumCore;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->coreInternal:Lio/legere/pdfiumandroid/PdfiumCore;

    return-object p0
.end method

.method public static final synthetic access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method


# virtual methods
.method public final newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$4;-><init>(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final newDocument(Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final newDocument([BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$8;-><init>(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final newDocument([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$6;-><init>(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;[BLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
