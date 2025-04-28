.class Lnet/time4j/calendar/HijriCalendar$MonthRule;
.super Ljava/lang/Object;
.source "HijriCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ElementRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HijriCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonthRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ElementRule<",
        "Lnet/time4j/calendar/HijriCalendar;",
        "Lnet/time4j/calendar/HijriMonth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HijriCalendar$1;)V
    .locals 0

    .line 1824
    invoke-direct {p0}, Lnet/time4j/calendar/HijriCalendar$MonthRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChildAtCeiling(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->getChildAtCeiling(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtCeiling(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HijriCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1888
    sget-object p1, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getChildAtFloor(Ljava/lang/Object;)Lnet/time4j/engine/ChronoElement;
    .locals 0

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->getChildAtFloor(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;

    move-result-object p1

    return-object p1
.end method

.method public getChildAtFloor(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/engine/ChronoElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/calendar/HijriCalendar;",
            ")",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 1881
    sget-object p1, Lnet/time4j/calendar/HijriCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    return-object p1
.end method

.method public bridge synthetic getMaximum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->getMaximum(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMaximum(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriMonth;
    .locals 0

    .line 1846
    sget-object p1, Lnet/time4j/calendar/HijriMonth;->DHU_AL_HIJJAH:Lnet/time4j/calendar/HijriMonth;

    return-object p1
.end method

.method public bridge synthetic getMinimum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->getMinimum(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriMonth;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriMonth;
    .locals 0

    .line 1839
    sget-object p1, Lnet/time4j/calendar/HijriMonth;->MUHARRAM:Lnet/time4j/calendar/HijriMonth;

    return-object p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->getValue(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriMonth;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lnet/time4j/calendar/HijriCalendar;)Lnet/time4j/calendar/HijriMonth;
    .locals 0

    .line 1832
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getMonth()Lnet/time4j/calendar/HijriMonth;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isValid(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    check-cast p2, Lnet/time4j/calendar/HijriMonth;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->isValid(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriMonth;)Z

    move-result p1

    return p1
.end method

.method public isValid(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriMonth;)Z
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

    .line 1824
    check-cast p1, Lnet/time4j/calendar/HijriCalendar;

    check-cast p2, Lnet/time4j/calendar/HijriMonth;

    invoke-virtual {p0, p1, p2, p3}, Lnet/time4j/calendar/HijriCalendar$MonthRule;->withValue(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriMonth;Z)Lnet/time4j/calendar/HijriCalendar;

    move-result-object p1

    return-object p1
.end method

.method public withValue(Lnet/time4j/calendar/HijriCalendar;Lnet/time4j/calendar/HijriMonth;Z)Lnet/time4j/calendar/HijriCalendar;
    .locals 6

    if-eqz p2, :cond_0

    .line 1871
    invoke-virtual {p2}, Lnet/time4j/calendar/HijriMonth;->getValue()I

    move-result v2

    .line 1872
    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getCalendarSystem()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p2

    sget-object p3, Lnet/time4j/calendar/HijriEra;->ANNO_HEGIRAE:Lnet/time4j/calendar/HijriEra;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v0

    invoke-interface {p2, p3, v0, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->getLengthOfMonth(Lnet/time4j/engine/CalendarEra;II)I

    move-result p2

    .line 1873
    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$600(Lnet/time4j/calendar/HijriCalendar;)I

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1874
    new-instance p2, Lnet/time4j/calendar/HijriCalendar;

    invoke-static {p1}, Lnet/time4j/calendar/HijriCalendar;->access$400(Lnet/time4j/calendar/HijriCalendar;)I

    move-result v1

    invoke-virtual {p1}, Lnet/time4j/calendar/HijriCalendar;->getVariant()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lnet/time4j/calendar/HijriCalendar;-><init>(IIILjava/lang/String;Lnet/time4j/calendar/HijriCalendar$1;)V

    return-object p2

    .line 1868
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing month."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
