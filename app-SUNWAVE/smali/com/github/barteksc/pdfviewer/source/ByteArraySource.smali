.class public Lcom/github/barteksc/pdfviewer/source/ByteArraySource;
.super Ljava/lang/Object;
.source "ByteArraySource.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;->data:[B

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lio/legere/pdfiumandroid/PdfiumCore;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;->data:[B

    invoke-virtual {p2, p1, p3}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument([BLjava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    return-object p1
.end method
