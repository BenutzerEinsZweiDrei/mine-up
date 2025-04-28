.class public final Lio/legere/pdfiumandroid/PdfDocument$Bookmark;
.super Ljava/lang/Object;
.source "PdfDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmark"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
        "",
        "<init>",
        "()V",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "pageIdx",
        "",
        "getPageIdx",
        "()J",
        "setPageIdx",
        "(J)V",
        "mNativePtr",
        "getMNativePtr",
        "setMNativePtr",
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
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private mNativePtr:J

.field private pageIdx:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/legere/pdfiumandroid/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getMNativePtr()J
    .locals 2

    .line 322
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->mNativePtr:J

    return-wide v0
.end method

.method public final getPageIdx()J
    .locals 2

    .line 321
    iget-wide v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->pageIdx:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setMNativePtr(J)V
    .locals 0

    .line 322
    iput-wide p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->mNativePtr:J

    return-void
.end method

.method public final setPageIdx(J)V
    .locals 0

    .line 321
    iput-wide p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->pageIdx:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Bookmark;->title:Ljava/lang/String;

    return-void
.end method
