.class public Lcom/github/barteksc/pdfviewer/source/UriSource;
.super Ljava/lang/Object;
.source "UriSource.java"

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/UriSource;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lio/legere/pdfiumandroid/PdfiumCore;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/source/UriSource;->uri:Landroid/net/Uri;

    const-string v1, "r"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 37
    invoke-virtual {p2, p1, p3}, Lio/legere/pdfiumandroid/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object p1

    return-object p1
.end method
