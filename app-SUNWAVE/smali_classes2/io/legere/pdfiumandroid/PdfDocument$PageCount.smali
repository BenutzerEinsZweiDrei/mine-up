.class public final Lio/legere/pdfiumandroid/PdfDocument$PageCount;
.super Ljava/lang/Object;
.source "PdfDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageCount"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfDocument$PageCount;",
        "",
        "pagePtr",
        "",
        "count",
        "",
        "<init>",
        "(JI)V",
        "getPagePtr",
        "()J",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private count:I

.field private final pagePtr:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-wide p1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    .line 333
    iput p3, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    return-void
.end method

.method public static synthetic copy$default(Lio/legere/pdfiumandroid/PdfDocument$PageCount;JIILjava/lang/Object;)Lio/legere/pdfiumandroid/PdfDocument$PageCount;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->copy(JI)Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    return-wide v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    return v0
.end method

.method public final copy(JI)Lio/legere/pdfiumandroid/PdfDocument$PageCount;
    .locals 1

    new-instance v0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    invoke-direct {v0, p1, p2, p3}, Lio/legere/pdfiumandroid/PdfDocument$PageCount;-><init>(JI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;

    iget-wide v3, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    iget-wide v5, p1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    iget p1, p1, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 333
    iget v0, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    return v0
.end method

.method public final getPagePtr()J
    .locals 2

    .line 332
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    invoke-static {v0, v1}, Lio/legere/pdfiumandroid/PdfDocument$PageCount$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    .line 333
    iput p1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageCount(pagePtr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->pagePtr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/legere/pdfiumandroid/PdfDocument$PageCount;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
