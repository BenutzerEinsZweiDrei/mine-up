.class Lnet/time4j/calendar/KoreanEra$YearOfEraElement;
.super Lnet/time4j/format/DisplayElement;
.source "KoreanEra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/KoreanEra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearOfEraElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/DisplayElement<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d245d2111b97507L


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "YEAR_OF_ERA"

    .line 353
    invoke-direct {p0, v0}, Lnet/time4j/format/DisplayElement;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/KoreanEra$1;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lnet/time4j/calendar/KoreanEra$YearOfEraElement;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 405
    sget-object v0, Lnet/time4j/calendar/KoreanEra;->DANGI:Lnet/time4j/calendar/KoreanEra;

    invoke-virtual {v0}, Lnet/time4j/calendar/KoreanEra;->yearOfEra()Lnet/time4j/engine/ChronoElement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/ElementRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 393
    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 394
    new-instance p1, Lnet/time4j/calendar/KoreanEra$GregorianYearOfEraRule;

    invoke-direct {p1, v0}, Lnet/time4j/calendar/KoreanEra$GregorianYearOfEraRule;-><init>(Lnet/time4j/calendar/KoreanEra$1;)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public getDefaultMaximum()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x14d4

    .line 376
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMaximum()Ljava/lang/Object;
    .locals 1

    .line 343
    invoke-virtual {p0}, Lnet/time4j/calendar/KoreanEra$YearOfEraElement;->getDefaultMaximum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMinimum()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0xf8a

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultMinimum()Ljava/lang/Object;
    .locals 1

    .line 343
    invoke-virtual {p0}, Lnet/time4j/calendar/KoreanEra$YearOfEraElement;->getDefaultMinimum()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()C
    .locals 1

    const/16 v0, 0x79

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

    .line 361
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
