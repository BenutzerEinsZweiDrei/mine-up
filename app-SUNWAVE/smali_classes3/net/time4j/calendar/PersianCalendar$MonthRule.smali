.class Lnet/time4j/calendar/PersianCalendar$MonthRule;
.super Ljava/lang/Object;
.source "PersianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/PersianCalendar;",
        "Lnet/time4j/calendar/PersianMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/PersianCalendar$1;)V
    .locals 0

    .line 1591
    invoke-direct {p0}, Lnet/time4j/calendar/PersianCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/PersianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1655
    sget-object p1, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/PersianCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1648
    sget-object p1, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianMonth;
    .locals 0

    .line 1613
    sget-object p1, Lnet/time4j/calendar/PersianMonth;->ESFAND:Lnet/time4j/calendar/PersianMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianMonth;
    .locals 0

    .line 1606
    sget-object p1, Lnet/time4j/calendar/PersianMonth;->FARVARDIN:Lnet/time4j/calendar/PersianMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->getValue(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/PersianCalendar;)Lnet/time4j/calendar/PersianMonth;
    .locals 0

    .line 1599
    invoke-virtual {p1}, Lnet/time4j/calendar/PersianCalendar;->getMonth()Lnet/time4j/calendar/PersianMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    check-cast p2, Lnet/time4j/calendar/PersianMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->isValid(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianMonth;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic withValue(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0

    .line 1591
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    check-cast p2, Lnet/time4j/calendar/PersianMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/PersianCalendar$MonthRule;->withValue(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianMonth;Z)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/calendar/PersianMonth;Z)Lnet/time4j/calendar/PersianCalendar;
    .locals 2

    if-eqz p2, :cond_0

    .line 1638
    invoke-virtual {p2}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result p2

    .line 1639
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p3

    sget-object v0, Lnet/time4j/calendar/PersianEra;->ANNO_PERSICO:Lnet/time4j/calendar/PersianEra;

    invoke-static {p1}, Lnet/time4j/calendar/PersianCalendar;->access$900(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v1

    invoke-interface {p3, v0, v1, p2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p3

    .line 1640
    invoke-static {p1}, Lnet/time4j/calendar/PersianCalendar;->access$800(Lnet/time4j/calendar/PersianCalendar;)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1641
    new-instance v0, Lnet/time4j/calendar/PersianCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/PersianCalendar;->access$900(Lnet/time4j/calendar/PersianCalendar;)I

    move-result p1

    invoke-direct {v0, p1, p2, p3}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    return-object v0

    .line 1635
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
