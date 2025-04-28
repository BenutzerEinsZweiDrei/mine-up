.class Lnet/time4j/calendar/hindu/HinduCalendar$Merger;
.super Ljava/lang/Object;
.source "HinduCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/hindu/HinduCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/hindu/HinduCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/hindu/HinduCalendar$1;)V
    .locals 0

    .line 2394
    invoke-direct {p0}, Lnet/time4j/calendar/hindu/HinduCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2394
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 2394
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/hindu/HinduCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/hindu/HinduCalendar;"
        }
    .end annotation

    .line 2412
    sget-object v0, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2414
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2418
    :cond_0
    invoke-static {v0}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object v1

    .line 2419
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object v2

    .line 2424
    sget-object v3, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v3}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2425
    sget-object v1, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 2427
    :cond_1
    invoke-virtual {v1}, Lnet/time4j/calendar/hindu/HinduVariant;->getLocation()Lnet/time4j/calendar/astro/GeoLocation;

    move-result-object v1

    invoke-interface {v1}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Lnet/time4j/tz/ZonalOffset;->atLongitude(Ljava/math/BigDecimal;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v1

    .line 2433
    :goto_0
    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v3

    .line 2434
    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v5

    .line 2435
    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getAltitude()I

    move-result v7

    sget-object v8, Lnet/time4j/calendar/astro/StdSolarCalculator;->CC:Lnet/time4j/calendar/astro/StdSolarCalculator;

    .line 2432
    invoke-static/range {v3 .. v8}, Lnet/time4j/calendar/astro/SolarTime;->ofLocation(DDILnet/time4j/calendar/astro/SolarTime$Calculator;)Lnet/time4j/calendar/astro/SolarTime;

    move-result-object v2

    .line 2437
    invoke-virtual {v2}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object v2

    .line 2431
    invoke-static {v2}, Lnet/time4j/engine/StartOfDay;->definedBy(Lnet/time4j/engine/ChronoFunction;)Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    .line 2440
    sget-object v3, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v3, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 2441
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$1500()Lnet/time4j/engine/CalendarFamily;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/hindu/HinduCalendar;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/hindu/HinduCalendar;"
        }
    .end annotation

    .line 2451
    sget-object p4, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    const-string v0, ""

    invoke-interface {p2, p4, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2453
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 2454
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Hindu calendar variant."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object v0

    .line 2461
    :cond_0
    :try_start_0
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->from(Ljava/lang/String;)Lnet/time4j/calendar/hindu/HinduVariant;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getCalendarSystem()Lnet/time4j/calendar/hindu/HinduCS;

    move-result-object p4

    .line 2468
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->getDefaultEra()Lnet/time4j/calendar/hindu/HinduEra;

    move-result-object v1

    .line 2470
    sget-object v2, Lnet/time4j/calendar/hindu/HinduCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2471
    sget-object v1, Lnet/time4j/calendar/hindu/HinduCalendar;->ERA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/calendar/hindu/HinduEra;

    .line 2474
    :cond_1
    sget-object v2, Lnet/time4j/calendar/hindu/HinduCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    .line 2477
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing Hindu year."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object v0

    .line 2481
    :cond_2
    sget-object v4, Lnet/time4j/calendar/hindu/HinduEra;->KALI_YUGA:Lnet/time4j/calendar/hindu/HinduEra;

    invoke-virtual {v4, v1, v2}, Lnet/time4j/calendar/hindu/HinduEra;->yearOfEra(Lnet/time4j/calendar/hindu/HinduEra;I)I

    move-result v1

    .line 2483
    invoke-virtual {p2}, Lnet/time4j/calendar/hindu/HinduVariant;->isUsingElapsedYears()Z

    move-result p2

    if-nez p2, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 2487
    :cond_3
    sget-object p2, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    const-string v2, "Invalid Hindu date."

    if-eqz p2, :cond_5

    sget-object p2, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2488
    sget-object p2, Lnet/time4j/calendar/hindu/HinduCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/hindu/HinduMonth;

    .line 2489
    sget-object p3, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/hindu/AdjustableTextElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/calendar/hindu/HinduDay;

    .line 2491
    invoke-virtual {p4, v1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->isValid(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2492
    invoke-virtual {p4, v1, p2, p3}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p1

    return-object p1

    .line 2494
    :cond_4
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_0

    .line 2497
    :cond_5
    sget-object p2, Lnet/time4j/calendar/hindu/HinduCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-eq p2, v3, :cond_8

    const/4 v3, 0x1

    if-lt p2, v3, :cond_7

    .line 2501
    sget-object v4, Lnet/time4j/calendar/IndianMonth;->AGRAHAYANA:Lnet/time4j/calendar/IndianMonth;

    .line 2502
    invoke-static {v4}, Lnet/time4j/calendar/hindu/HinduMonth;->of(Lnet/time4j/calendar/IndianMonth;)Lnet/time4j/calendar/hindu/HinduMonth;

    move-result-object v4

    invoke-static {v3}, Lnet/time4j/calendar/hindu/HinduDay;->valueOf(I)Lnet/time4j/calendar/hindu/HinduDay;

    move-result-object v3

    invoke-virtual {p4, v1, v4, v3}, Lnet/time4j/calendar/hindu/HinduCS;->create(ILnet/time4j/calendar/hindu/HinduMonth;Lnet/time4j/calendar/hindu/HinduDay;)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v3

    .line 2503
    invoke-static {v3}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/hindu/HinduCalendar;->withNewYear()Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object v3

    invoke-static {v3}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$700(Lnet/time4j/calendar/hindu/HinduCalendar;)J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 2504
    invoke-virtual {p4, v3, v4}, Lnet/time4j/calendar/hindu/HinduCS;->create(J)Lnet/time4j/calendar/hindu/HinduCalendar;

    move-result-object p2

    .line 2507
    invoke-virtual {p4}, Lnet/time4j/calendar/hindu/HinduCS;->getMinimumSinceUTC()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-gtz v5, :cond_7

    .line 2508
    invoke-virtual {p4}, Lnet/time4j/calendar/hindu/HinduCS;->getMaximumSinceUTC()J

    move-result-wide v5

    cmp-long p4, v5, v3

    if-ltz p4, :cond_7

    if-nez p3, :cond_6

    .line 2509
    invoke-static {p2}, Lnet/time4j/calendar/hindu/HinduCalendar;->access$400(Lnet/time4j/calendar/hindu/HinduCalendar;)I

    move-result p3

    if-ne p3, v1, :cond_7

    :cond_6
    return-object p2

    .line 2514
    :cond_7
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_8
    :goto_0
    return-object v0

    .line 2463
    :catch_0
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Invalid Hindu calendar variant."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object v0
.end method

.method public getDefaultPivotYear()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 4

    .line 2537
    sget-object v0, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    .line 2539
    invoke-interface {v0}, Lnet/time4j/calendar/astro/GeoLocation;->getLatitude()D

    move-result-wide v0

    sget-object v2, Lnet/time4j/calendar/hindu/HinduVariant;->UJJAIN:Lnet/time4j/calendar/astro/GeoLocation;

    .line 2540
    invoke-interface {v2}, Lnet/time4j/calendar/astro/GeoLocation;->getLongitude()D

    move-result-wide v2

    .line 2538
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/calendar/astro/SolarTime;->ofLocation(DD)Lnet/time4j/calendar/astro/SolarTime;

    move-result-object v0

    .line 2541
    invoke-virtual {v0}, Lnet/time4j/calendar/astro/SolarTime;->sunrise()Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    .line 2537
    invoke-static {v0}, Lnet/time4j/engine/StartOfDay;->definedBy(Lnet/time4j/engine/ChronoFunction;)Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 2404
    invoke-static {}, Lnet/time4j/calendar/IndianCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/time4j/engine/TimeAxis;->getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 2394
    check-cast p1, Lnet/time4j/calendar/hindu/HinduCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/hindu/HinduCalendar$Merger;->preformat(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/hindu/HinduCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
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
