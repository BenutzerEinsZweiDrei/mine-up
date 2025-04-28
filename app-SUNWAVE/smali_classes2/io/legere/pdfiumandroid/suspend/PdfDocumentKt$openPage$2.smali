.class final Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PdfDocumentKt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->openPage(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
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
        "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
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
    c = "io.legere.pdfiumandroid.suspend.PdfDocumentKt$openPage$2"
    f = "PdfDocumentKt.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $pageIndex:I

.field label:I

.field final synthetic this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;


# direct methods
.method constructor <init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    iput p2, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->$pageIndex:I

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

    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    iget v1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->$pageIndex:I

    invoke-direct {p1, v0, v1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 45
    iget v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfPageKt;

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->getDocument()Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object v0

    iget v1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->$pageIndex:I

    invoke-virtual {v0, v1}, Lio/legere/pdfiumandroid/PdfDocument;->openPage(I)Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v0

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPage$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    invoke-static {v1}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;-><init>(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-object p1

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
