.class final Lnet/time4j/calendar/RelatedGregorianYearElement;
.super Lnet/time4j/engine/BasicElement;
.source "RelatedGregorianYearElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/engine/BasicElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final SINGLETON:Lnet/time4j/calendar/RelatedGregorianYearElement;

.field private static final serialVersionUID:J = -0xf809c43c4f2116aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lnet/time4j/calendar/RelatedGregorianYearElement;

    invoke-direct {v0}, Lnet/time4j/calendar/RelatedGregorianYearElement;-><init>()V

    sput-object v0, Lnet/time4j/calendar/RelatedGregorianYearElement;->SINGLETON:Lnet/time4j/calendar/RelatedGregorianYearElement;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "RELATED_GREGORIAN_YEAR"

    .line 52
    invoke-direct {p0, v0}, Lnet/time4j/engine/BasicElement;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    const v0, 0x3b9ac9ff

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/calendar/RelatedGregorianYearElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const v0, -0x3b9ac9ff

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lnet/time4j/calendar/RelatedGregorianYearElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x72

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
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

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 113
    sget-object v0, Lnet/time4j/calendar/RelatedGregorianYearElement;->SINGLETON:Lnet/time4j/calendar/RelatedGregorianYearElement;

    return-object v0
.end method
