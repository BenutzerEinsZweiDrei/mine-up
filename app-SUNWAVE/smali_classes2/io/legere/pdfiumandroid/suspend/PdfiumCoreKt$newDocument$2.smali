.class final Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PdfiumCoreKt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->newDocument(Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.legere.pdfiumandroid.suspend.PdfiumCoreKt$newDocument$2"
    f = "PdfiumCoreKt.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fd:Landroid/os/ParcelFileDescriptor;

.field label:I

.field final synthetic this$0:Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;


# direct methods
.method constructor <init>(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;

    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->$fd:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->$fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, v0, v1, p2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;Landroid/os/ParcelFileDescriptor;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 28
    iget v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;

    invoke-static {v0}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->access$getCoreInternal$p(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;)Lio/legere/pdfiumandroid/PdfiumCore;

    move-result-object v0

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->$fd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object v0

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt$newDocument$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;

    invoke-static {v1}, Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;->access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfiumCoreKt;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;-><init>(Lio/legere/pdfiumandroid/PdfDocument;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
