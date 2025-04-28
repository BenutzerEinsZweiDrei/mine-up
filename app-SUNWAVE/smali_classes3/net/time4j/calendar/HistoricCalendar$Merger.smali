.class Lnet/time4j/calendar/HistoricCalendar$Merger;
.super Ljava/lang/Object;
.source "HistoricCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/HistoricCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/HistoricCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/HistoricCalendar$1;)V
    .locals 0

    .line 1881
    invoke-direct {p0}, Lnet/time4j/calendar/HistoricCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1881
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1881
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/HistoricCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/HistoricCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/HistoricCalendar;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/HistoricCalendar;"
        }
    .end annotation

    .line 1916
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1918
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1924
    :cond_0
    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v1}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1925
    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 1926
    :cond_1
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v1, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/Leniency;

    invoke-virtual {v1}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1927
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v1

    invoke-virtual {v1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v1

    .line 1932
    :goto_0
    sget-object v2, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/HistoricCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 1933
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/HistoricCalendar;->access$1400()Lnet/time4j/engine/CalendarFamily;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/HistoricCalendar;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/HistoricCalendar;"
        }
    .end annotation

    .line 1945
    invoke-static {p2}, Lnet/time4j/calendar/HistoricCalendar;->access$1100(Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/history/ChronoHistory;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 1948
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Cannot find any calendar history."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    .line 1951
    :cond_0
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1952
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/history/HistoricEra;

    .line 1953
    sget-object v1, Lnet/time4j/calendar/HistoricCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1954
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->era()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1956
    :cond_1
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->RELATED_STANDARD_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1957
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->RELATED_STANDARD_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    .line 1958
    sget-object v1, Lnet/time4j/calendar/HistoricCalendar;->RELATED_STANDARD_YEAR:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v1, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1959
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    .line 1961
    :cond_2
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1962
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    .line 1963
    sget-object v1, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1964
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->dayOfYear()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    goto :goto_0

    .line 1966
    :cond_3
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1967
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Month;

    .line 1968
    sget-object v1, Lnet/time4j/calendar/HistoricCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1969
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v1

    invoke-virtual {v0}, Lnet/time4j/Month;->getValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    .line 1971
    :cond_4
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1972
    sget-object v0, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v0

    .line 1973
    sget-object v1, Lnet/time4j/calendar/HistoricCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1974
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    .line 1979
    :cond_5
    :goto_0
    new-instance v0, Lnet/time4j/i18n/HistoricExtension;

    invoke-direct {v0}, Lnet/time4j/i18n/HistoricExtension;-><init>()V

    .line 1980
    invoke-virtual {v0, p1, p3, p2}, Lnet/time4j/i18n/HistoricExtension;->resolve(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/history/ChronoHistory;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    .line 1982
    sget-object p2, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1983
    new-instance p2, Lnet/time4j/calendar/HistoricCalendar;

    sget-object v0, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-direct {p2, p3, p1, p4}, Lnet/time4j/calendar/HistoricCalendar;-><init>(Lnet/time4j/history/ChronoHistory;Lnet/time4j/PlainDate;Lnet/time4j/calendar/HistoricCalendar$1;)V

    return-object p2

    :cond_6
    return-object p4
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 1906
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1899
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "generic"

    .line 1892
    invoke-static {v0, p1, p2}, Lnet/time4j/calendar/service/GenericDatePatterns;->get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1881
    check-cast p1, Lnet/time4j/calendar/HistoricCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/HistoricCalendar$Merger;->preformat(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/HistoricCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
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
