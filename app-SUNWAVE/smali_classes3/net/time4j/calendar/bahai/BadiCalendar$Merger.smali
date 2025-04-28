.class Lnet/time4j/calendar/bahai/BadiCalendar$Merger;
.super Ljava/lang/Object;
.source "BadiCalendar.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/calendar/bahai/BadiCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Merger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/calendar/bahai/BadiCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/calendar/bahai/BadiCalendar$1;)V
    .locals 0

    .line 2590
    invoke-direct {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 2590
    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 2590
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/bahai/BadiCalendar;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/calendar/bahai/BadiCalendar;"
        }
    .end annotation

    .line 2603
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2604
    sget-object v0, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v0}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    goto :goto_0

    .line 2605
    :cond_0
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {p2, v0, v1}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2606
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v0

    .line 2611
    :goto_0
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0}, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/StartOfDay;

    .line 2612
    invoke-interface {p1}, Lnet/time4j/base/TimeSource;->currentTime()Lnet/time4j/base/UnixTime;

    move-result-object p1

    invoke-static {p1}, Lnet/time4j/Moment;->from(Lnet/time4j/base/UnixTime;)Lnet/time4j/Moment;

    move-result-object p1

    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1700()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/GeneralTimestamp;->toDate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/calendar/bahai/BadiCalendar;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/calendar/bahai/BadiCalendar;"
        }
    .end annotation

    .line 2624
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->KULL_I_SHAI:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    const/high16 p3, -0x80000000

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    if-lt p2, v0, :cond_16

    const/4 v1, 0x3

    if-le p2, v1, :cond_1

    goto/16 :goto_c

    .line 2633
    :cond_1
    :goto_0
    sget-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->VAHID:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v1}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-ne v1, p3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    if-lt v1, v0, :cond_15

    if-le v1, v3, :cond_3

    goto/16 :goto_b

    :cond_3
    move v4, v0

    .line 2643
    :goto_1
    sget-object v5, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_VAHID:Lnet/time4j/format/TextElement;

    invoke-virtual {p1, v5}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v5

    if-ne v5, p3, :cond_5

    .line 2646
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2648
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p2

    invoke-virtual {p2}, Lnet/time4j/engine/TimeAxis;->getMinimum()Lnet/time4j/engine/TimePoint;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/bahai/BadiCalendar;

    sget-object v1, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    sget-object v4, Lnet/time4j/calendar/bahai/BadiCalendar;->YEAR_OF_ERA:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, v4}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v4

    invoke-virtual {p2, v1, v4}, Lnet/time4j/calendar/bahai/BadiCalendar;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/bahai/BadiCalendar;

    .line 2649
    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getKullishai()I

    move-result v1

    .line 2650
    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getVahid()I

    move-result v4

    .line 2651
    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiCalendar;->getYearOfVahid()I

    move-result v5

    goto :goto_2

    .line 2653
    :cond_4
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing year-of-vahid."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    :cond_5
    if-nez v4, :cond_6

    .line 2657
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const-string p3, "Missing vahid cycle."

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    :cond_6
    if-lt v5, v0, :cond_14

    if-le v5, v3, :cond_7

    goto/16 :goto_a

    :cond_7
    move v4, v1

    move v1, p2

    .line 2666
    :goto_2
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    const-string v6, "Invalid Badi date."

    if-eqz p2, :cond_9

    .line 2667
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->MONTH_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/calendar/bahai/BadiMonth;

    invoke-virtual {p2}, Lnet/time4j/calendar/bahai/BadiMonth;->getValue()I

    move-result p2

    .line 2668
    sget-object p3, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p3}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p3

    if-lt p3, v0, :cond_8

    if-gt p3, v3, :cond_8

    .line 2671
    new-instance p4, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v6, 0x0

    move-object v0, p4

    move v2, v4

    move v3, v5

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    goto/16 :goto_9

    .line 2673
    :cond_8
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v6}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto/16 :goto_9

    .line 2675
    :cond_9
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->AYYAM_I_HA:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result p2

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eqz p2, :cond_c

    .line 2676
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_DIVISION:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    if-lt p2, v0, :cond_b

    .line 2678
    invoke-static {v1, v4, v5}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_3

    :cond_a
    move v7, v8

    :goto_3
    if-gt p2, v7, :cond_b

    .line 2679
    new-instance p4, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 p1, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    move v2, v4

    move v3, v5

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    goto :goto_9

    .line 2681
    :cond_b
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v6}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_9

    .line 2684
    :cond_c
    sget-object p2, Lnet/time4j/calendar/bahai/BadiCalendar;->DAY_OF_YEAR:Lnet/time4j/calendar/StdCalendarElement;

    invoke-virtual {p1, p2}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result p2

    .line 2685
    invoke-static {v1, v4, v5}, Lnet/time4j/calendar/bahai/BadiCalendar;->isLeapYear(III)Z

    move-result v9

    if-eq p2, p3, :cond_13

    if-lt p2, v0, :cond_12

    if-eqz v9, :cond_d

    const/16 p3, 0x16e

    goto :goto_4

    :cond_d
    const/16 p3, 0x16d

    :goto_4
    if-gt p2, p3, :cond_12

    const/16 p1, 0x156

    if-gt p2, p1, :cond_e

    sub-int/2addr p2, v0

    .line 2691
    div-int/lit8 p1, p2, 0x13

    add-int/lit8 v2, p1, 0x1

    .line 2692
    rem-int/2addr p2, v3

    add-int/2addr p2, v0

    :goto_5
    move p1, v2

    goto :goto_8

    :cond_e
    if-eqz v9, :cond_f

    move p3, v7

    goto :goto_6

    :cond_f
    move p3, v8

    :goto_6
    add-int/2addr p3, p1

    if-gt p2, p3, :cond_10

    sub-int/2addr p2, p1

    goto :goto_5

    :cond_10
    if-eqz v9, :cond_11

    goto :goto_7

    :cond_11
    move v7, v8

    :goto_7
    sub-int/2addr p2, v7

    sub-int/2addr p2, p1

    move p1, v3

    .line 2700
    :goto_8
    new-instance p4, Lnet/time4j/calendar/bahai/BadiCalendar;

    const/4 v6, 0x0

    move-object v0, p4

    move v2, v4

    move v3, v5

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lnet/time4j/calendar/bahai/BadiCalendar;-><init>(IIIIILnet/time4j/calendar/bahai/BadiCalendar$1;)V

    goto :goto_9

    .line 2702
    :cond_12
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p1, p2, v6}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    :cond_13
    :goto_9
    return-object p4

    .line 2660
    :cond_14
    :goto_a
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Badi year-of-vahid out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    .line 2639
    :cond_15
    :goto_b
    sget-object p2, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Vahid cycle out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4

    .line 2629
    :cond_16
    :goto_c
    sget-object p3, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Major cycle out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-object p4
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 2735
    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/TimeAxis;->getDefaultPivotYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x734

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 2742
    invoke-static {}, Lnet/time4j/calendar/bahai/BadiCalendar;->access$1800()Lnet/time4j/calendar/astro/SolarTime;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/astro/SolarTime;->sunset()Lnet/time4j/engine/ChronoFunction;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/engine/StartOfDay;->definedBy(Lnet/time4j/engine/ChronoFunction;)Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 2728
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Localized format patterns are not available."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 2590
    check-cast p1, Lnet/time4j/calendar/bahai/BadiCalendar;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/calendar/bahai/BadiCalendar$Merger;->preformat(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/calendar/bahai/BadiCalendar;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
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
