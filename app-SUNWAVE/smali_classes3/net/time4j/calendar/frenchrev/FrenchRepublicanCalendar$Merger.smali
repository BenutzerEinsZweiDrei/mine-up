.class Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;
.super Ljava/lang/Object;
.source "FrenchRepublicanCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$1;)V
    .locals 0

    .line 2475
    invoke-direct {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2475
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 2475
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;"
        }
    .end annotation

    .line 2488
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 2490
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2491
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 2496
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 2497
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$700()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;"
        }
    .end annotation

    .line 2510
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->attribute()Lnet/time4j/engine/AttributeKey;

    move-result-object p3

    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    .line 2511
    sget-object p3, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p3

    const/4 p4, 0x0

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 2514
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing republican year."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    :cond_0
    const/4 v1, 0x1

    if-lt p3, v1, :cond_b

    const/16 v2, 0x4b2

    if-le p3, v2, :cond_1

    goto/16 :goto_2

    .line 2523
    :cond_1
    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v2

    const-string v3, "Invalid republican date."

    if-eqz v2, :cond_4

    .line 2524
    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;

    invoke-virtual {v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanMonth;->getValue()I

    move-result v2

    .line 2525
    sget-object v4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 2527
    sget-object v5, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2528
    sget-object v5, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DECADE_OF_MONTH:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v5

    if-eq v5, v0, :cond_2

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xa

    .line 2530
    sget-object v4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_DECADE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/calendar/frenchrev/DayOfDecade;

    invoke-virtual {v4}, Lnet/time4j/calendar/frenchrev/DayOfDecade;->getValue()I

    move-result v4

    add-int/2addr v4, v5

    :cond_2
    if-eq v4, v0, :cond_9

    if-lt v4, v1, :cond_3

    const/16 v0, 0x1e

    if-gt v4, v0, :cond_3

    .line 2536
    invoke-static {p3, v2, v4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->of(III)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p4

    goto :goto_1

    .line 2538
    :cond_3
    sget-object p3, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p3, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_1

    .line 2541
    :cond_4
    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2542
    sget-object v0, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->SANSCULOTTIDES:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/frenchrev/Sansculottides;

    .line 2543
    invoke-virtual {v0}, Lnet/time4j/calendar/frenchrev/Sansculottides;->getValue()I

    move-result v0

    add-int/lit16 v0, v0, 0x168

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 2544
    invoke-virtual {p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->isLeapYear(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2545
    sget-object p3, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string v0, "Republican date is no leap year."

    invoke-virtual {p1, p3, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_1

    .line 2547
    :cond_5
    new-instance p4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-direct {p4, p3, v0}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    goto :goto_1

    .line 2550
    :cond_6
    sget-object v2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v2

    if-eq v2, v0, :cond_9

    if-lt v2, v1, :cond_8

    .line 2552
    invoke-virtual {p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16e

    goto :goto_0

    :cond_7
    const/16 v0, 0x16d

    :goto_0
    if-gt v2, v0, :cond_8

    .line 2553
    new-instance p4, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-direct {p4, p3, v2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;-><init>(II)V

    goto :goto_1

    .line 2555
    :cond_8
    sget-object p3, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p3, v3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_9
    :goto_1
    if-eqz p4, :cond_a

    .line 2560
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object p1

    if-eq p2, p1, :cond_a

    .line 2561
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object p1

    invoke-virtual {p2, p4}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->transform(J)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    move-result-object p4

    :cond_a
    return-object p4

    .line 2517
    :cond_b
    :goto_2
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Republican year out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 2609
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x700

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 2602
    sget-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2595
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Localized format patterns are not available."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 2475
    check-cast p1, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Merger;->preformat(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 2

    .line 2572
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;->attribute()Lnet/time4j/engine/AttributeKey;

    move-result-object v0

    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    .line 2574
    invoke-static {}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->access$800()Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;

    move-result-object v0

    if-ne p2, v0, :cond_0

    return-object p1

    .line 2578
    :cond_0
    invoke-virtual {p1, p2}, Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar;->getDate(Lnet/time4j/calendar/frenchrev/FrenchRepublicanAlgorithm;)Lnet/time4j/calendar/frenchrev/FrenchRepublicanCalendar$Date;

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
