.class final Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PdfDocumentKt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->openPages(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfDocumentKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfDocumentKt.kt\nio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1557#2:131\n1628#2,3:132\n*S KotlinDebug\n*F\n+ 1 PdfDocumentKt.kt\nio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2\n*L\n65#1:131\n65#1:132,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "io.legere.pdfiumandroid.suspend.PdfDocumentKt$openPages$2"
    f = "PdfDocumentKt.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fromIndex:I

.field final synthetic $toIndex:I

.field label:I

.field final synthetic this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;


# direct methods
.method constructor <init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    iput p2, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->$fromIndex:I

    iput p3, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->$toIndex:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    iget v1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->$fromIndex:I

    iget v2, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->$toIndex:I

    invoke-direct {p1, v0, v1, v2, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;IILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 64
    iget v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->getDocument()Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    iget v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->$fromIndex:I

    iget v1, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->$toIndex:I

    invoke-virtual {p1, v0, v1}, Lio/legere/pdfiumandroid/PdfDocument;->openPages(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt$openPages$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 132
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    check-cast v2, Lio/legere/pdfiumandroid/PdfPage;

    .line 65
    new-instance v3, Lio/legere/pdfiumandroid/suspend/PdfPageKt;

    invoke-static {v0}, Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;->access$getDispatcher$p(Lio/legere/pdfiumandroid/suspend/PdfDocumentKt;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;-><init>(Lio/legere/pdfiumandroid/PdfPage;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 133
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
