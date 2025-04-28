.class public Lnet/time4j/history/internal/StdHistoricalElement;
.super Lnet/time4j/format/DisplayElement;
.source "StdHistoricalElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final YEAR_OF_DISPLAY:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient defaultMax:Ljava/lang/Integer;

.field private final transient defaultMin:Ljava/lang/Integer;

.field private final transient symbol:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lnet/time4j/history/internal/StdHistoricalElement;

    const-string v1, "YEAR_OF_DISPLAY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x270f

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/time4j/history/internal/StdHistoricalElement;-><init>(Ljava/lang/String;CII)V

    sput-object v0, Lnet/time4j/history/internal/StdHistoricalElement;->YEAR_OF_DISPLAY:Lnet/time4j/engine/ChronoElement;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CII)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    .line 71
    iput-char p2, p0, Lnet/time4j/history/internal/StdHistoricalElement;->symbol:C

    .line 72
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/history/internal/StdHistoricalElement;->defaultMin:Ljava/lang/Integer;

    .line 73
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/history/internal/StdHistoricalElement;->defaultMax:Ljava/lang/Integer;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 130
    sget-object v0, Lnet/time4j/history/internal/StdHistoricalElement;->YEAR_OF_DISPLAY:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    .line 103
    iget-object v0, p0, Lnet/time4j/history/internal/StdHistoricalElement;->defaultMax:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lnet/time4j/history/internal/StdHistoricalElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    .line 96
    iget-object v0, p0, Lnet/time4j/history/internal/StdHistoricalElement;->defaultMin:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lnet/time4j/history/internal/StdHistoricalElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    .line 89
    iget-char v0, p0, Lnet/time4j/history/internal/StdHistoricalElement;->symbol:C

    return v0
.end method

.method public final getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 82
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public isDateElement()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSingleton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTimeElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
