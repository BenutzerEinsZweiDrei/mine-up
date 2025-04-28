.class public final Lio/legere/pdfiumandroid/PdfDocument$Link;
.super Ljava/lang/Object;
.source "PdfDocument.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfDocument$Link;",
        "",
        "bounds",
        "Landroid/graphics/RectF;",
        "destPageIdx",
        "",
        "uri",
        "",
        "<init>",
        "(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getBounds",
        "()Landroid/graphics/RectF;",
        "getDestPageIdx",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getUri",
        "()Ljava/lang/String;",
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
.field private final bounds:Landroid/graphics/RectF;

.field private final destPageIdx:Ljava/lang/Integer;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lio/legere/pdfiumandroid/PdfDocument$Link;->bounds:Landroid/graphics/RectF;

    .line 327
    iput-object p2, p0, Lio/legere/pdfiumandroid/PdfDocument$Link;->destPageIdx:Ljava/lang/Integer;

    .line 328
    iput-object p3, p0, Lio/legere/pdfiumandroid/PdfDocument$Link;->uri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 326
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Link;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getDestPageIdx()Ljava/lang/Integer;
    .locals 1

    .line 327
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Link;->destPageIdx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lio/legere/pdfiumandroid/PdfDocument$Link;->uri:Ljava/lang/String;

    return-object v0
.end method
