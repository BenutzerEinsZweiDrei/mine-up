.class Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "DecodingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private password:Ljava/lang/String;

.field private pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

.field private pdfViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/barteksc/pdfviewer/PDFView;",
            ">;"
        }
    .end annotation
.end field

.field private pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

.field private userPages:[I


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[ILcom/github/barteksc/pdfviewer/PDFView;Lio/legere/pdfiumandroid/PdfiumCore;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    .line 41
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->userPages:[I

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    .line 43
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfViewReference:Ljava/lang/ref/WeakReference;

    .line 44
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    return-void
.end method

.method private getViewSize(Lcom/github/barteksc/pdfviewer/PDFView;)Lio/legere/pdfiumandroid/util/Size;
    .locals 2

    .line 78
    new-instance v0, Lio/legere/pdfiumandroid/util/Size;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lio/legere/pdfiumandroid/util/Size;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 18

    move-object/from16 v1, p0

    .line 51
    :try_start_0
    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v2, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    iget-object v5, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/github/barteksc/pdfviewer/source/DocumentSource;->createDocument(Landroid/content/Context;Lio/legere/pdfiumandroid/PdfiumCore;Ljava/lang/String;)Lio/legere/pdfiumandroid/PdfDocument;

    move-result-object v8

    .line 54
    new-instance v2, Lcom/github/barteksc/pdfviewer/PdfFile;

    iget-object v7, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lio/legere/pdfiumandroid/PdfiumCore;

    .line 57
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageFitPolicy()Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    move-result-object v9

    .line 58
    invoke-direct {v1, v0}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->getViewSize(Lcom/github/barteksc/pdfviewer/PDFView;)Lio/legere/pdfiumandroid/util/Size;

    move-result-object v10

    iget-object v11, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->userPages:[I

    .line 60
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isOnDualPageMode()Z

    move-result v12

    .line 61
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v13

    .line 62
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getSpacingPx()I

    move-result v14

    .line 63
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isAutoSpacingEnabled()Z

    move-result v15

    .line 64
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isFitEachPage()Z

    move-result v16

    .line 65
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isOnLandscapeOrientation()Z

    move-result v17

    move-object v6, v2

    invoke-direct/range {v6 .. v17}, Lcom/github/barteksc/pdfviewer/PdfFile;-><init>(Lio/legere/pdfiumandroid/PdfiumCore;Lio/legere/pdfiumandroid/PdfDocument;Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lio/legere/pdfiumandroid/util/Size;[IZZIZZZ)V

    iput-object v2, v1, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "pdfView == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadError(Ljava/lang/Throwable;)V

    return-void

    .line 89
    :cond_0
    iget-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    if-nez p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfFile:Lcom/github/barteksc/pdfviewer/PdfFile;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadComplete(Lcom/github/barteksc/pdfviewer/PdfFile;)V

    :cond_1
    return-void
.end method
