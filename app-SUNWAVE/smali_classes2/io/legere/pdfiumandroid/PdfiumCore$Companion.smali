.class public final Lio/legere/pdfiumandroid/PdfiumCore$Companion;
.super Ljava/lang/Object;
.source "PdfiumCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/legere/pdfiumandroid/PdfiumCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/PdfiumCore$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "lock",
        "getLock",
        "()Ljava/lang/Object;",
        "isReady",
        "Lio/legere/pdfiumandroid/util/InitLock;",
        "()Lio/legere/pdfiumandroid/util/InitLock;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/legere/pdfiumandroid/PdfiumCore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLock()Ljava/lang/Object;
    .locals 1

    .line 522
    invoke-static {}, Lio/legere/pdfiumandroid/PdfiumCore;->access$getLock$cp()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isReady()Lio/legere/pdfiumandroid/util/InitLock;
    .locals 1

    .line 524
    invoke-static {}, Lio/legere/pdfiumandroid/PdfiumCore;->access$isReady$cp()Lio/legere/pdfiumandroid/util/InitLock;

    move-result-object v0

    return-object v0
.end method
