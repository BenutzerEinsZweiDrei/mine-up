.class public final Lio/legere/pdfiumandroid/PdfDocument$Meta;
.super Ljava/lang/Object;
.source "PdfDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Meta"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u001a\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\t\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfDocument$Meta;",
        "",
        "<init>",
        "()V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "author",
        "getAuthor",
        "setAuthor",
        "subject",
        "getSubject",
        "setSubject",
        "keywords",
        "getKeywords",
        "setKeywords",
        "creator",
        "getCreator",
        "setCreator",
        "producer",
        "getProducer",
        "setProducer",
        "creationDate",
        "getCreationDate",
        "setCreationDate",
        "modDate",
        "getModDate",
        "setModDate",
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
.field private author:Ljava/lang/String;

.field private creationDate:Ljava/lang/String;

.field private creator:Ljava/lang/String;

.field private keywords:Ljava/lang/String;

.field private modDate:Ljava/lang/String;

.field private producer:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreationDate()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreator()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getModDate()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->modDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getProducer()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->producer:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubject()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->author:Ljava/lang/String;

    return-void
.end method

.method public final setCreationDate(Ljava/lang/String;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->creationDate:Ljava/lang/String;

    return-void
.end method

.method public final setCreator(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->creator:Ljava/lang/String;

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->keywords:Ljava/lang/String;

    return-void
.end method

.method public final setModDate(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->modDate:Ljava/lang/String;

    return-void
.end method

.method public final setProducer(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->producer:Ljava/lang/String;

    return-void
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->subject:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Meta;->title:Ljava/lang/String;

    return-void
.end method
