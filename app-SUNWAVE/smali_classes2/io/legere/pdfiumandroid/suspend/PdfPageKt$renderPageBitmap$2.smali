.class final Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PdfPageKt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/legere/pdfiumandroid/suspend/PdfPageKt;->renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "io.legere.pdfiumandroid.suspend.PdfPageKt$renderPageBitmap$2"
    f = "PdfPageKt.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $drawSizeX:I

.field final synthetic $drawSizeY:I

.field final synthetic $renderAnnot:Z

.field final synthetic $startX:I

.field final synthetic $startY:I

.field final synthetic $textMask:Z

.field label:I

.field final synthetic this$0:Lio/legere/pdfiumandroid/suspend/PdfPageKt;


# direct methods
.method constructor <init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt;",
            "Landroid/graphics/Bitmap;",
            "IIIIZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfPageKt;

    iput-object p2, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$startX:I

    iput p4, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$startY:I

    iput p5, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$drawSizeX:I

    iput p6, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$drawSizeY:I

    iput-boolean p7, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$renderAnnot:Z

    iput-boolean p8, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$textMask:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfPageKt;

    iget-object v2, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$startX:I

    iget v4, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$startY:I

    iget v5, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$drawSizeX:I

    iget v6, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$drawSizeY:I

    iget-boolean v7, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$renderAnnot:Z

    iget-boolean v8, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$textMask:Z

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfPageKt;Landroid/graphics/Bitmap;IIIIZZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 173
    iget v0, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    iget-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfPageKt;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/suspend/PdfPageKt;->getPage()Lio/legere/pdfiumandroid/PdfPage;

    move-result-object v0

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$bitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$startX:I

    iget v3, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$startY:I

    iget v4, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$drawSizeX:I

    iget v5, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$drawSizeY:I

    iget-boolean v6, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$renderAnnot:Z

    iget-boolean v7, p0, Lio/legere/pdfiumandroid/suspend/PdfPageKt$renderPageBitmap$2;->$textMask:Z

    invoke-virtual/range {v0 .. v7}, Lio/legere/pdfiumandroid/PdfPage;->renderPageBitmap(Landroid/graphics/Bitmap;IIIIZZ)V

    .line 175
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
