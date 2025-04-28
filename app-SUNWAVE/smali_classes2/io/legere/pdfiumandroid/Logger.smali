.class public final Lio/legere/pdfiumandroid/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lio/legere/pdfiumandroid/LoggerInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J$\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0001R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/Logger;",
        "Lio/legere/pdfiumandroid/LoggerInterface;",
        "<init>",
        "()V",
        "logger",
        "d",
        "",
        "tag",
        "",
        "message",
        "e",
        "t",
        "",
        "setLogger",
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


# static fields
.field public static final INSTANCE:Lio/legere/pdfiumandroid/Logger;

.field private static logger:Lio/legere/pdfiumandroid/LoggerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/legere/pdfiumandroid/Logger;

    invoke-direct {v0}, Lio/legere/pdfiumandroid/Logger;-><init>()V

    sput-object v0, Lio/legere/pdfiumandroid/Logger;->INSTANCE:Lio/legere/pdfiumandroid/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lio/legere/pdfiumandroid/Logger;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lio/legere/pdfiumandroid/LoggerInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lio/legere/pdfiumandroid/Logger;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lio/legere/pdfiumandroid/LoggerInterface;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setLogger(Lio/legere/pdfiumandroid/LoggerInterface;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sput-object p1, Lio/legere/pdfiumandroid/Logger;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    return-void
.end method
