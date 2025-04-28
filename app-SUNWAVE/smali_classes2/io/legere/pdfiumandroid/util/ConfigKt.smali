.class public final Lio/legere/pdfiumandroid/util/ConfigKt;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/legere/pdfiumandroid/util/ConfigKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\"\u001a\u0010\u0000\u001a\u00020\u0001X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "pdfiumConfig",
        "Lio/legere/pdfiumandroid/util/Config;",
        "getPdfiumConfig",
        "()Lio/legere/pdfiumandroid/util/Config;",
        "setPdfiumConfig",
        "(Lio/legere/pdfiumandroid/util/Config;)V",
        "handleAlreadyClosed",
        "",
        "isClosed",
        "pdfiumandroid_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static pdfiumConfig:Lio/legere/pdfiumandroid/util/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lio/legere/pdfiumandroid/util/Config;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lio/legere/pdfiumandroid/util/Config;-><init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/legere/pdfiumandroid/util/ConfigKt;->pdfiumConfig:Lio/legere/pdfiumandroid/util/Config;

    return-void
.end method

.method public static final getPdfiumConfig()Lio/legere/pdfiumandroid/util/Config;
    .locals 1

    .line 7
    sget-object v0, Lio/legere/pdfiumandroid/util/ConfigKt;->pdfiumConfig:Lio/legere/pdfiumandroid/util/Config;

    return-object v0
.end method

.method public static final handleAlreadyClosed(Z)Z
    .locals 3

    if-eqz p0, :cond_2

    .line 23
    sget-object v0, Lio/legere/pdfiumandroid/util/ConfigKt;->pdfiumConfig:Lio/legere/pdfiumandroid/util/Config;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/Config;->getAlreadyClosedBehavior()Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    move-result-object v0

    sget-object v1, Lio/legere/pdfiumandroid/util/ConfigKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "Already closed"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 26
    sget-object v0, Lio/legere/pdfiumandroid/util/ConfigKt;->pdfiumConfig:Lio/legere/pdfiumandroid/util/Config;

    invoke-virtual {v0}, Lio/legere/pdfiumandroid/util/Config;->getLogger()Lio/legere/pdfiumandroid/LoggerInterface;

    move-result-object v0

    const-string v1, "PdfiumCore"

    invoke-interface {v0, v1, v2}, Lio/legere/pdfiumandroid/LoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return p0
.end method

.method public static final setPdfiumConfig(Lio/legere/pdfiumandroid/util/Config;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sput-object p0, Lio/legere/pdfiumandroid/util/ConfigKt;->pdfiumConfig:Lio/legere/pdfiumandroid/util/Config;

    return-void
.end method
