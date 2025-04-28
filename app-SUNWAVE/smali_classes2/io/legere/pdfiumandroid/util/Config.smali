.class public final Lio/legere/pdfiumandroid/util/Config;
.super Ljava/lang/Object;
.source "Config.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/legere/pdfiumandroid/util/Config;",
        "",
        "logger",
        "Lio/legere/pdfiumandroid/LoggerInterface;",
        "alreadyClosedBehavior",
        "Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;",
        "<init>",
        "(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;)V",
        "getLogger",
        "()Lio/legere/pdfiumandroid/LoggerInterface;",
        "getAlreadyClosedBehavior",
        "()Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

.field private final logger:Lio/legere/pdfiumandroid/LoggerInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/legere/pdfiumandroid/util/Config;-><init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alreadyClosedBehavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    .line 18
    iput-object p2, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    return-void
.end method

.method public synthetic constructor <init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 17
    new-instance p1, Lio/legere/pdfiumandroid/DefaultLogger;

    invoke-direct {p1}, Lio/legere/pdfiumandroid/DefaultLogger;-><init>()V

    check-cast p1, Lio/legere/pdfiumandroid/LoggerInterface;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 18
    sget-object p2, Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;->EXCEPTION:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/legere/pdfiumandroid/util/Config;-><init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/legere/pdfiumandroid/util/Config;Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;ILjava/lang/Object;)Lio/legere/pdfiumandroid/util/Config;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/legere/pdfiumandroid/util/Config;->copy(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;)Lio/legere/pdfiumandroid/util/Config;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/legere/pdfiumandroid/LoggerInterface;
    .locals 1

    iget-object v0, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    return-object v0
.end method

.method public final component2()Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;
    .locals 1

    iget-object v0, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    return-object v0
.end method

.method public final copy(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;)Lio/legere/pdfiumandroid/util/Config;
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alreadyClosedBehavior"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/legere/pdfiumandroid/util/Config;

    invoke-direct {v0, p1, p2}, Lio/legere/pdfiumandroid/util/Config;-><init>(Lio/legere/pdfiumandroid/LoggerInterface;Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/legere/pdfiumandroid/util/Config;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/legere/pdfiumandroid/util/Config;

    iget-object v1, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    iget-object v3, p1, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    iget-object p1, p1, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAlreadyClosedBehavior()Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    return-object v0
.end method

.method public final getLogger()Lio/legere/pdfiumandroid/LoggerInterface;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    invoke-virtual {v1}, Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config(logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/legere/pdfiumandroid/util/Config;->logger:Lio/legere/pdfiumandroid/LoggerInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alreadyClosedBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/legere/pdfiumandroid/util/Config;->alreadyClosedBehavior:Lio/legere/pdfiumandroid/util/AlreadyClosedBehavior;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
