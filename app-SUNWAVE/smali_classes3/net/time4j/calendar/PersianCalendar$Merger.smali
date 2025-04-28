.class Lnet/time4j/calendar/PersianCalendar$Merger;
.super Ljava/lang/Object;
.source "PersianCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/PersianCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/PersianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/PersianCalendar$1;)V
    .locals 0

    .line 1728
    invoke-direct {p0}, Lnet/time4j/calendar/PersianCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1728
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1728
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/PersianCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/PersianCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/PersianCalendar;"
        }
    .end annotation

    .line 1765
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 1767
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 1773
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/PersianCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 1774
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/PersianCalendar;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/PersianCalendar;"
        }
    .end annotation

    .line 1786
    sget-object p3, Lnet/time4j/calendar/PersianCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p3

    const/4 p4, 0x0

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 1789
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Persian year."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    .line 1793
    :cond_0
    invoke-static {}, Lnet/time4j/calendar/PersianAlgorithm;->attribute()Lnet/time4j/engine/AttributeKey;

    move-result-object v1

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/calendar/PersianAlgorithm;

    .line 1794
    sget-object v2, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    .line 1796
    sget-object v3, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    if-ne v1, v3, :cond_1

    sget-object v3, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v3}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1797
    sget-object v3, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TZID;

    .line 1798
    instance-of v3, p2, Lnet/time4j/tz/ZonalOffset;

    if-eqz v3, :cond_1

    .line 1799
    move-object v2, p2

    check-cast v2, Lnet/time4j/tz/ZonalOffset;

    .line 1803
    :cond_1
    sget-object p2, Lnet/time4j/calendar/PersianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    const-string v3, "Invalid Persian date."

    if-eqz p2, :cond_4

    .line 1804
    sget-object p2, Lnet/time4j/calendar/PersianCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/PersianMonth;

    invoke-virtual {p2}, Lnet/time4j/calendar/PersianMonth;->getValue()I

    move-result p2

    .line 1805
    sget-object v4, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-eq v4, v0, :cond_b

    .line 1807
    invoke-virtual {v1, p3, p2, v4, v2}, Lnet/time4j/calendar/PersianAlgorithm;->isValid(IIILnet/time4j/tz/ZonalOffset;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1808
    new-instance p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {p1, p3, p2, v4}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    .line 1809
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object p2

    if-eq v1, p2, :cond_2

    .line 1810
    invoke-virtual {v1, p1, v2}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide p1

    .line 1811
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object p3

    sget-object p4, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p3, p1, p2, p4}, Lnet/time4j/calendar/PersianAlgorithm;->transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    :cond_2
    return-object p1

    .line 1815
    :cond_3
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_2

    .line 1819
    :cond_4
    sget-object p2, Lnet/time4j/calendar/PersianCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-eq p2, v0, :cond_b

    if-lez p2, :cond_a

    const/4 v0, 0x0

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0xc

    if-gt v4, v5, :cond_a

    const/4 v5, 0x6

    const/16 v6, 0x1e

    if-gt v4, v5, :cond_5

    const/16 v6, 0x1f

    goto :goto_1

    :cond_5
    const/16 v5, 0xb

    if-gt v4, v5, :cond_6

    goto :goto_1

    .line 1831
    :cond_6
    invoke-virtual {v1, p3, v2}, Lnet/time4j/calendar/PersianAlgorithm;->isLeapYear(ILnet/time4j/tz/ZonalOffset;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v5, 0x1d

    move v6, v5

    :goto_1
    add-int v5, v0, v6

    if-le p2, v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    move v0, v5

    goto :goto_0

    :cond_8
    sub-int/2addr p2, v0

    .line 1836
    invoke-virtual {v1, p3, v4, p2, v2}, Lnet/time4j/calendar/PersianAlgorithm;->isValid(IIILnet/time4j/tz/ZonalOffset;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1837
    new-instance p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-direct {p1, p3, v4, p2}, Lnet/time4j/calendar/PersianCalendar;-><init>(III)V

    .line 1838
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object p2

    if-eq v1, p2, :cond_9

    .line 1839
    invoke-virtual {v1, p1, v2}, Lnet/time4j/calendar/PersianAlgorithm;->transform(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/tz/ZonalOffset;)J

    move-result-wide p1

    .line 1840
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object p3

    sget-object p4, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p3, p1, p2, p4}, Lnet/time4j/calendar/PersianAlgorithm;->transform(JLnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar;

    move-result-object p1

    :cond_9
    return-object p1

    .line 1848
    :cond_a
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_b
    :goto_2
    return-object p4
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 1753
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x26d

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1746
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "persian"

    .line 1739
    invoke-static {v0, p1, p2}, Lnet/time4j/calendar/service/GenericDatePatterns;->get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1728
    check-cast p1, Lnet/time4j/calendar/PersianCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/PersianCalendar$Merger;->preformat(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/PersianCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 2

    .line 1862
    invoke-static {}, Lnet/time4j/calendar/PersianAlgorithm;->attribute()Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/PersianAlgorithm;

    .line 1864
    invoke-static {}, Lnet/time4j/calendar/PersianCalendar;->access$1000()Lnet/time4j/calendar/PersianAlgorithm;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 1868
    :cond_0
    sget-object v1, Lnet/time4j/calendar/PersianAlgorithm;->ASTRONOMICAL:Lnet/time4j/calendar/PersianAlgorithm;

    if-ne v0, v1, :cond_2

    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1869
    sget-object v0, Lnet/time4j/calendar/PersianAlgorithm;->STD_OFFSET:Lnet/time4j/tz/ZonalOffset;

    .line 1870
    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TZID;

    .line 1871
    instance-of v1, p2, Lnet/time4j/tz/ZonalOffset;

    if-eqz v1, :cond_1

    .line 1872
    move-object v0, p2

    check-cast v0, Lnet/time4j/tz/ZonalOffset;

    .line 1874
    :cond_1
    invoke-virtual {p1, v0}, Lnet/time4j/calendar/PersianCalendar;->getDate(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/calendar/PersianCalendar$Date;

    move-result-object p1

    return-object p1

    .line 1877
    :cond_2
    invoke-virtual {p1, v0}, Lnet/time4j/calendar/PersianCalendar;->getDate(Lnet/time4j/calendar/PersianAlgorithm;)Lnet/time4j/calendar/PersianCalendar$Date;

    move-result-object p1

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
