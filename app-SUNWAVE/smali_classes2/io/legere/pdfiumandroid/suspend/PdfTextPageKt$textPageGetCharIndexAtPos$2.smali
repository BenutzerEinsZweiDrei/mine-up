.class final Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PdfTextPageKt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->textPageGetCharIndexAtPos(DDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "io.legere.pdfiumandroid.suspend.PdfTextPageKt$textPageGetCharIndexAtPos$2"
    f = "PdfTextPageKt.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $x:D

.field final synthetic $xTolerance:D

.field final synthetic $y:D

.field final synthetic $yTolerance:D

.field label:I

.field final synthetic this$0:Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;


# direct methods
.method constructor <init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;DDDDLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;",
            "DDDD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;

    iput-wide p2, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$x:D

    iput-wide p4, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$y:D

    iput-wide p6, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$xTolerance:D

    iput-wide p8, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$yTolerance:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance p1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;

    iget-object v1, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;

    iget-wide v2, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$x:D

    iget-wide v4, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$y:D

    iget-wide v6, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$xTolerance:D

    iget-wide v8, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$yTolerance:D

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;-><init>(Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;DDDDLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 69
    iget v0, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->this$0:Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;

    invoke-virtual {p1}, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt;->getPage()Lio/legere/pdfiumandroid/PdfTextPage;

    move-result-object v0

    iget-wide v1, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$x:D

    iget-wide v3, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$y:D

    iget-wide v5, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$xTolerance:D

    iget-wide v7, p0, Lio/legere/pdfiumandroid/suspend/PdfTextPageKt$textPageGetCharIndexAtPos$2;->$yTolerance:D

    invoke-virtual/range {v0 .. v8}, Lio/legere/pdfiumandroid/PdfTextPage;->textPageGetCharIndexAtPos(DDDD)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
