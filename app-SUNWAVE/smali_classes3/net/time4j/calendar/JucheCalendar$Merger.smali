.class Lnet/time4j/calendar/JucheCalendar$Merger;
.super Ljava/lang/Object;
.source "JucheCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/JucheCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/JucheCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/JucheCalendar$1;)V
    .locals 0

    .line 1062
    invoke-direct {p0}, Lnet/time4j/calendar/JucheCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1062
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JucheCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1062
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/JucheCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/JucheCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/JucheCalendar;"
        }
    .end annotation

    .line 1092
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 1094
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1095
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 1100
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/JucheCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 1101
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->access$600()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/JucheCalendar;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/JucheCalendar;"
        }
    .end annotation

    .line 1113
    sget-object p2, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1114
    new-instance p2, Lnet/time4j/calendar/JucheCalendar;

    sget-object p3, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-direct {p2, p1}, Lnet/time4j/calendar/JucheCalendar;-><init>(Lnet/time4j/PlainDate;)V

    return-object p2

    .line 1117
    :cond_0
    sget-object p2, Lnet/time4j/calendar/JucheCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    const/4 p3, 0x0

    const/high16 p4, -0x80000000

    if-ne p2, p4, :cond_1

    .line 1120
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p4, "Missing Juche year."

    invoke-virtual {p1, p2, p4}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p3

    .line 1124
    :cond_1
    invoke-static {p2}, Lnet/time4j/calendar/JucheCalendar;->access$300(I)I

    move-result v0

    .line 1126
    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    const-string v2, "Invalid Juche date."

    if-eqz v1, :cond_3

    .line 1127
    sget-object v0, Lnet/time4j/calendar/JucheCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/Month;

    invoke-virtual {v0}, Lnet/time4j/Month;->getValue()I

    move-result v0

    .line 1128
    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    if-eq v1, p4, :cond_6

    .line 1130
    invoke-static {}, Lnet/time4j/calendar/JucheCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object p4

    sget-object v3, Lnet/time4j/calendar/JucheEra;->JUCHE:Lnet/time4j/calendar/JucheEra;

    invoke-interface {p4, v3, p2, v0, v1}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 1131
    invoke-static {p2, v0, v1}, Lnet/time4j/calendar/JucheCalendar;->of(III)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    return-object p1

    .line 1133
    :cond_2
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_1

    .line 1137
    :cond_3
    sget-object v1, Lnet/time4j/calendar/JucheCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    if-eq v1, p4, :cond_6

    if-lez v1, :cond_5

    const/4 p4, 0x0

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0xc

    if-gt v3, v4, :cond_5

    .line 1143
    invoke-static {v0, v3}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v4

    add-int/2addr v4, p4

    if-le v1, v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    move p4, v4

    goto :goto_0

    :cond_4
    sub-int/2addr v1, p4

    .line 1149
    invoke-static {p2, v3, v1}, Lnet/time4j/calendar/JucheCalendar;->of(III)Lnet/time4j/calendar/JucheCalendar;

    move-result-object p1

    return-object p1

    .line 1153
    :cond_5
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_6
    :goto_1
    return-object p3
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 1181
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x777

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1080
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "roc"

    .line 1073
    invoke-static {v0, p1, p2}, Lnet/time4j/calendar/service/GenericDatePatterns;->get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1062
    check-cast p1, Lnet/time4j/calendar/JucheCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/JucheCalendar$Merger;->preformat(Lnet/time4j/calendar/JucheCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/JucheCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
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
