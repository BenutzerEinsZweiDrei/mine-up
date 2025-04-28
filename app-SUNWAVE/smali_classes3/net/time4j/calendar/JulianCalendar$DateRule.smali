.class Lnet/time4j/calendar/JulianCalendar$DateRule;
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
    name = "DateRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/JulianCalendar;",
        "Lnet/time4j/history/HistoricDate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JulianCalendar$1;)V
    .locals 0

    .line 1445
    invoke-direct {p0}, Lnet/time4j/calendar/JulianCalendar$DateRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$DateRule;->getChildAtCeiling(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$DateRule;->getChildAtFloor(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/engine/ChronoElement;

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$DateRule;->getMaximum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricDate;
    .locals 3

    .line 1467
    sget-object p1, Lnet/time4j/history/HistoricEra;->AD:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {p1, v0, v1, v2}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$DateRule;->getMinimum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricDate;
    .locals 2

    .line 1460
    sget-object p1, Lnet/time4j/history/HistoricEra;->BC:Lnet/time4j/history/HistoricEra;

    const v0, 0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/JulianCalendar$DateRule;->getValue(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/JulianCalendar;)Lnet/time4j/history/HistoricDate;
    .locals 3

    .line 1453
    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p1}, Lnet/time4j/calendar/JulianCalendar;->getYear()I

    move-result v1

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$800(Lnet/time4j/calendar/JulianCalendar;)I

    move-result v2

    invoke-static {p1}, Lnet/time4j/calendar/JulianCalendar;->access$900(Lnet/time4j/calendar/JulianCalendar;)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lnet/time4j/history/HistoricDate;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/history/HistoricDate;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Lnet/time4j/history/HistoricDate;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JulianCalendar$DateRule;->isValid(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricDate;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricDate;)Z
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1481
    :cond_0
    invoke-static {}, Lnet/time4j/calendar/JulianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p1

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object v0

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result v1

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v2

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p2

    invoke-interface {p1, v0, v1, v2, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1445
    check-cast p1, Lnet/time4j/calendar/JulianCalendar;

    check-cast p2, Lnet/time4j/history/HistoricDate;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/JulianCalendar$DateRule;->withValue(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricDate;Z)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/JulianCalendar;Lnet/time4j/history/HistoricDate;Z)Lnet/time4j/calendar/JulianCalendar;
    .locals 1

    if-eqz p2, :cond_0

    .line 1496
    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getEra()Lnet/time4j/history/HistoricEra;

    move-result-object p1

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getYearOfEra()I

    move-result p3

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getMonth()I

    move-result v0

    invoke-virtual {p2}, Lnet/time4j/history/HistoricDate;->getDayOfMonth()I

    move-result p2

    invoke-static {p1, p3, v0, p2}, Lnet/time4j/calendar/JulianCalendar;->of(Lnet/time4j/history/HistoricEra;III)Lnet/time4j/calendar/JulianCalendar;

    move-result-object p1

    return-object p1

    .line 1493
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing historic date value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
