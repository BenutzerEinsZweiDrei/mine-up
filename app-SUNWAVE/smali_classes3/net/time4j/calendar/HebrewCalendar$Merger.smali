.class Lnet/time4j/calendar/HebrewCalendar$Merger;
.super Ljava/lang/Object;
.source "HebrewCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HebrewCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/HebrewCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HebrewCalendar$1;)V
    .locals 0

    .line 1822
    invoke-direct {p0}, Lnet/time4j/calendar/HebrewCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1822
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1822
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/HebrewCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/HebrewCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/HebrewCalendar;"
        }
    .end annotation

    .line 1845
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1846
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 1847
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1848
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 1853
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/HebrewCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 1854
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$1200()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/HebrewCalendar;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/HebrewCalendar;"
        }
    .end annotation

    .line 1866
    sget-object p3, Lnet/time4j/calendar/HebrewCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p3

    const/4 p4, 0x0

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 1869
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Hebrew year."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    .line 1875
    :cond_0
    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;->INSTANCE:Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1876
    sget-object v1, Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;->INSTANCE:Lnet/time4j/calendar/HebrewCalendar$ParsedMonthElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    .line 1877
    sget-object v3, Lnet/time4j/calendar/HebrewCalendar$3;->$SwitchMap$net$time4j$calendar$HebrewMonth$Order:[I

    invoke-static {}, Lnet/time4j/calendar/HebrewMonth;->order()Lnet/time4j/engine/AttributeKey;

    move-result-object v4

    sget-object v5, Lnet/time4j/calendar/HebrewMonth$Order;->CIVIL:Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-interface {p2, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/HebrewMonth$Order;

    invoke-virtual {p2}, Lnet/time4j/calendar/HebrewMonth$Order;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    .line 1885
    invoke-static {v1}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p2

    goto :goto_0

    .line 1882
    :cond_1
    invoke-static {p3}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result p2

    invoke-static {v1, p2}, Lnet/time4j/calendar/HebrewMonth;->valueOfBiblical(IZ)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p2

    goto :goto_0

    .line 1879
    :cond_2
    invoke-static {p3}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result p2

    invoke-static {v1, p2}, Lnet/time4j/calendar/HebrewMonth;->valueOfCivil(IZ)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p2

    goto :goto_0

    .line 1887
    :cond_3
    sget-object p2, Lnet/time4j/calendar/HebrewCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1888
    sget-object p2, Lnet/time4j/calendar/HebrewCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/HebrewMonth;

    goto :goto_0

    :cond_4
    move-object p2, p4

    :goto_0
    const-string v1, "Invalid Hebrew date."

    if-eqz p2, :cond_6

    .line 1892
    sget-object v2, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v2

    if-eq v2, v0, :cond_a

    .line 1895
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    sget-object v3, Lnet/time4j/calendar/HebrewEra;->ANNO_MUNDI:Lnet/time4j/calendar/HebrewEra;

    invoke-virtual {p2}, Lnet/time4j/calendar/HebrewMonth;->getValue()I

    move-result v4

    invoke-interface {v0, v3, p3, v4, v2}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1896
    invoke-static {p3, p2, v2}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 1898
    :cond_5
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_2

    .line 1902
    :cond_6
    sget-object p2, Lnet/time4j/calendar/HebrewCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-eq p2, v0, :cond_a

    if-lez p2, :cond_9

    const/4 v0, 0x0

    .line 1907
    invoke-static {p3}, Lnet/time4j/calendar/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    :goto_1
    const/16 v4, 0xd

    if-gt v2, v4, :cond_9

    const/4 v4, 0x6

    if-ne v2, v4, :cond_7

    if-nez v3, :cond_7

    goto :goto_1

    .line 1912
    :cond_7
    invoke-static {v2}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object v4

    invoke-static {p3, v4}, Lnet/time4j/calendar/HebrewCalendar;->lengthOfMonth(ILnet/time4j/calendar/HebrewMonth;)I

    move-result v4

    add-int/2addr v4, v0

    if-le p2, v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    .line 1917
    :cond_8
    invoke-static {v2}, Lnet/time4j/calendar/HebrewMonth;->valueOf(I)Lnet/time4j/calendar/HebrewMonth;

    move-result-object p1

    sub-int/2addr p2, v0

    invoke-static {p3, p1, p2}, Lnet/time4j/calendar/HebrewCalendar;->of(ILnet/time4j/calendar/HebrewMonth;I)Lnet/time4j/calendar/HebrewCalendar;

    move-result-object p1

    return-object p1

    .line 1921
    :cond_9
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v1}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_a
    :goto_2
    return-object p4
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 1953
    invoke-static {}, Lnet/time4j/calendar/HebrewCalendar;->nowInSystemTime()Lnet/time4j/calendar/HebrewCalendar;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/HebrewCalendar;->getYear()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1946
    sget-object v0, Lnet/time4j/engine/StartOfDay;->EVENING:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "hebrew"

    .line 1833
    invoke-static {v0, p1, p2}, Lnet/time4j/calendar/service/GenericDatePatterns;->get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1822
    check-cast p1, Lnet/time4j/calendar/HebrewCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HebrewCalendar$Merger;->preformat(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/HebrewCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    return-object p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
