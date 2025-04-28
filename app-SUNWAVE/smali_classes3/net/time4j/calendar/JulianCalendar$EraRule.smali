.class Lnet/time4j/calendar/JulianCalendar$EraRule;
.super Ljava/lang/Object;
.source "JulianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JulianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EraRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/JulianCalendar;",
        "Lnet/time4j/history/HistoricEra;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JulianCalendar$1;)V
    .locals 0

    .line 1378
    invoke-direct {p0}, Lnet/time4j/calendar/JulianCalendar$EraRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$EraRule;->getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JulianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1439
    sget-object p1, Lnet/time4j/calendar/JulianCalendar;->YEAR_OF_ERA:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$EraRule;->getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/JulianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1432
    sget-object p1, Lnet/time4j/calendar/JulianCalendar;->YEAR_OF_ERA:Lnet/time4j/engine/ChronoElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$EraRule;->getMaximum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricEra;
    .locals 0

    .line 1400
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$EraRule;->getMinimum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricEra;
    .locals 0

    .line 1393
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$EraRule;->getValue(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricEra;
    .locals 0

    .line 1386
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$EraRule;->isValid(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricEra;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricEra;)Z
    .locals 0

    .line 1410
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/time4j/history/HistoricEra;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1378
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Lnet/time4j/history/HistoricEra;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar$EraRule;->withValue(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricEra;Z)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricEra;Z)Lnet/time4j/calendar/JulianCalendar;
    .locals 0

    .line 1421
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$EraRule;->isValid(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricEra;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 1422
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Julian era cannot be changed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
