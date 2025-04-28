.class public Lcom/github/barteksc/pdfviewer/source/FileSource;
.super Ljava/lang/Object;
.source "FileSource.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/FileSource;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lio/legere/pdfiumandroid/PdfiumCore;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/source/FileSource;->file:Ljava/io/File;

    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 37
    invoke-virtual {p2, p1, p3}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    return-object p1
.end method
