.class Lnet/time4j/calendar/ThaiSolarCalendar$Merger;
.super Ljava/lang/Object;
.source "ThaiSolarCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/ThaiSolarCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/ThaiSolarCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/ThaiSolarCalendar$1;)V
    .locals 0

    .line 1203
    invoke-direct {p0}, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 1203
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 1203
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/ThaiSolarCalendar;"
        }
    .end annotation

    .line 1240
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 1242
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1243
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 1248
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 1249
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/ThaiSolarCalendar;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/ThaiSolarCalendar;"
        }
    .end annotation

    .line 1261
    sget-object p2, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1262
    new-instance p2, Lnet/time4j/calendar/ThaiSolarCalendar;

    sget-object p3, Lnet/time4j/PlainDate;->COMPONENT:Lnet/time4j/CalendarDateElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainDate;

    invoke-direct {p2, p1, p4}, Lnet/time4j/calendar/ThaiSolarCalendar;-><init>(Lnet/time4j/PlainDate;Lnet/time4j/calendar/ThaiSolarCalendar$1;)V

    return-object p2

    .line 1267
    :cond_0
    sget-object p2, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1268
    sget-object p2, Lnet/time4j/calendar/ThaiSolarCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/ThaiSolarEra;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_c

    .line 1270
    sget-object p2, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    .line 1276
    :goto_0
    sget-object p3, Lnet/time4j/calendar/ThaiSolarCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p3

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_2

    .line 1279
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Thai year."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    .line 1283
    :cond_2
    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    const-string v2, "Invalid Thai calendar date."

    if-eqz v1, :cond_4

    .line 1284
    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/Month;

    invoke-virtual {v1}, Lnet/time4j/Month;->getValue()I

    move-result v1

    .line 1285
    sget-object v3, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v3

    if-eq v3, v0, :cond_b

    .line 1287
    invoke-static {}, Lnet/time4j/calendar/ThaiSolarCalendar;->access$100()Lnet/time4j/calendar/EraYearMonthDaySystem;

    move-result-object v0

    invoke-interface {v0, p2, p3, v1, v3}, Lnet/time4j/calendar/EraYearMonthDaySystem;->isValid(Lnet/time4j/engine/CalendarEra;III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    invoke-static {p2, p3, v1, v3}, Lnet/time4j/calendar/ThaiSolarCalendar;->of(Lnet/time4j/calendar/ThaiSolarEra;III)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1

    .line 1290
    :cond_3
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_6

    .line 1294
    :cond_4
    sget-object v1, Lnet/time4j/calendar/ThaiSolarCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    if-eq v1, v0, :cond_b

    if-lez v1, :cond_a

    .line 1297
    sget-object v0, Lnet/time4j/calendar/ThaiSolarEra;->RATTANAKOSIN:Lnet/time4j/calendar/ThaiSolarEra;

    const/4 v3, 0x0

    if-eq p2, v0, :cond_6

    const/16 v0, 0x9b4

    if-ge p3, v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x3

    :goto_2
    const/4 v4, 0x4

    .line 1298
    invoke-virtual {p2, p3, v4}, Lnet/time4j/calendar/ThaiSolarEra;->toIsoYear(II)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    :goto_3
    const/16 v6, 0xc

    add-int/lit8 v7, v0, 0xc

    if-gt v5, v7, :cond_a

    if-le v5, v6, :cond_8

    .line 1305
    sget-object v6, Lnet/time4j/calendar/ThaiSolarEra;->BUDDHIST:Lnet/time4j/calendar/ThaiSolarEra;

    if-ne p2, v6, :cond_7

    const/16 v6, 0x794

    if-ne v4, v6, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, -0xc

    goto :goto_4

    :cond_8
    move v6, v4

    move v7, v5

    .line 1311
    :goto_4
    invoke-static {v6, v7}, Lnet/time4j/base/GregorianMath;->getLengthOfMonth(II)I

    move-result v6

    add-int/2addr v6, v3

    if-le v1, v6, :cond_9

    add-int/lit8 v5, v5, 0x1

    move v3, v6

    goto :goto_3

    :cond_9
    sub-int/2addr v1, v3

    .line 1317
    invoke-static {p2, p3, v7, v1}, Lnet/time4j/calendar/ThaiSolarCalendar;->of(Lnet/time4j/calendar/ThaiSolarEra;III)Lnet/time4j/calendar/ThaiSolarCalendar;

    move-result-object p1

    return-object p1

    .line 1321
    :cond_a
    :goto_5
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_b
    :goto_6
    return-object p4

    .line 1272
    :cond_c
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Thai era."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 1228
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 1221
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "buddhist"

    .line 1214
    invoke-static {v0, p1, p2}, Lnet/time4j/calendar/service/GenericDatePatterns;->get(Ljava/lang/String;Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 1203
    check-cast p1, Lnet/time4j/calendar/ThaiSolarCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/ThaiSolarCalendar$Merger;->preformat(Lnet/time4j/calendar/ThaiSolarCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/ThaiSolarCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
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
