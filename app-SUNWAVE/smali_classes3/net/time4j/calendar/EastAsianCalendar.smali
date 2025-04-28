.class public abstract Lnet/time4j/calendar/EastAsianCalendar;
.super Lnet/time4j/engine/Calendrical;
.source "EastAsianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;,
        Lnet/time4j/calendar/EastAsianCalendar$MonthRule;,
        Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;,
        Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "D:",
        "Lnet/time4j/calendar/EastAsianCalendar<",
        "TU;TD;>;>",
        "Lnet/time4j/engine/Calendrical<",
        "TU;TD;>;"
    }
.end annotation


# static fields
.field static final CYCLE_INDEX:I = 0x3

.field static final DAY_OF_MONTH_INDEX:I = 0x0

.field static final DAY_OF_YEAR_INDEX:I = 0x1

.field static final MONTH_AS_ORDINAL_INDEX:I = 0x2

.field static final UNIT_CYCLES:I = 0x0

.field static final UNIT_DAYS:I = 0x4

.field static final UNIT_MONTHS:I = 0x2

.field static final UNIT_WEEKS:I = 0x3

.field static final UNIT_YEARS:I = 0x1


# instance fields
.field private final transient cycle:I

.field private final transient dayOfMonth:I

.field private final transient leapMonth:I

.field private final transient month:Lnet/time4j/calendar/EastAsianMonth;

.field private final transient utcDays:J

.field private final transient yearOfCycle:I


# direct methods
.method constructor <init>(IILnet/time4j/calendar/EastAsianMonth;IJ)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lnet/time4j/engine/Calendrical;-><init>()V

    .line 100
    iput p1, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    .line 101
    iput p2, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    .line 102
    iput-object p3, p0, Lnet/time4j/calendar/EastAsianCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    .line 103
    iput p4, p0, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    .line 105
    iput-wide p5, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    .line 106
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result p1

    iput p1, p0, Lnet/time4j/calendar/EastAsianCalendar;->leapMonth:I

    return-void
.end method

.method static getCycleRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 541
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method static getDayOfMonthRule()Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>()",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method static getDayOfYearRule()Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>()",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method static getMonthAsOrdinalRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lnet/time4j/calendar/EastAsianCalendar$IntegerElementRule;-><init>(ILnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method static getMonthOfYearRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Lnet/time4j/calendar/EastAsianMonth;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/calendar/EastAsianCalendar$MonthRule;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method static getUnitRule(I)Lnet/time4j/engine/UnitRule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(I)",
            "Lnet/time4j/engine/UnitRule<",
            "TD;>;"
        }
    .end annotation

    .line 569
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;

    invoke-direct {v0, p0}, Lnet/time4j/calendar/EastAsianCalendar$EastAsianUnitRule;-><init>(I)V

    return-object v0
.end method

.method static getVietYearOfCycleRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Lnet/time4j/calendar/CyclicYear;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;-><init>(Lnet/time4j/engine/ChronoElement;ZLnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method static getYearOfCycleRule(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/ElementRule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lnet/time4j/calendar/EastAsianCalendar<",
            "*TD;>;>(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/ElementRule<",
            "TD;",
            "Lnet/time4j/calendar/CyclicYear;",
            ">;"
        }
    .end annotation

    .line 545
    new-instance v0, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lnet/time4j/calendar/EastAsianCalendar$CyclicYearRule;-><init>(Lnet/time4j/engine/ChronoElement;ZLnet/time4j/calendar/EastAsianCalendar$1;)V

    return-object v0
.end method

.method private newYearUTC(I)J
    .locals 3

    .line 586
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    iget v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    iget v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainTime;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TD;>;"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/Calendrical;

    invoke-static {v0, p1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public atTime(II)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lnet/time4j/GeneralTimestamp<",
            "TD;>;"
        }
    .end annotation

    .line 474
    invoke-static {p1, p2}, Lnet/time4j/PlainTime;->of(II)Lnet/time4j/PlainTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/calendar/EastAsianCalendar;->at(Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 494
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 495
    check-cast p1, Lnet/time4j/calendar/EastAsianCalendar;

    .line 496
    iget v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    iget v3, p1, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    iget v3, p1, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    iget v3, p1, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    iget-object v3, p1, Lnet/time4j/calendar/EastAsianCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    .line 500
    invoke-virtual {v2, v3}, Lnet/time4j/calendar/EastAsianMonth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    iget-wide v4, p1, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public findLeapMonth()Lnet/time4j/calendar/EastAsianMonth;
    .locals 3

    .line 311
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v1

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_0
    invoke-static {v0}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method abstract getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/calendar/EastAsianCS<",
            "TD;>;"
        }
    .end annotation
.end method

.method getCycle()I
    .locals 1

    .line 574
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 173
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    return v0
.end method

.method public getDayOfWeek()Lnet/time4j/Weekday;
    .locals 4

    .line 189
    iget-wide v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lnet/time4j/Weekday;->valueOf(I)Lnet/time4j/Weekday;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfYear()I
    .locals 5

    .line 205
    iget-wide v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v2

    iget v3, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    iget v4, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    invoke-virtual {v2, v3, v4}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getDaysSinceEpochUTC()J
    .locals 2

    .line 482
    iget-wide v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    return-wide v0
.end method

.method getLeapMonth()I
    .locals 1

    .line 579
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->leapMonth:I

    return v0
.end method

.method public getMonth()Lnet/time4j/calendar/EastAsianMonth;
    .locals 1

    .line 157
    iget-object v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    return-object v0
.end method

.method public getSexagesimalDay()Lnet/time4j/calendar/SexagesimalName;
    .locals 4

    .line 261
    sget-object v0, Lnet/time4j/engine/EpochDays;->RATA_DIE:Lnet/time4j/engine/EpochDays;

    iget-wide v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    sget-object v3, Lnet/time4j/engine/EpochDays;->UTC:Lnet/time4j/engine/EpochDays;

    invoke-virtual {v0, v1, v2, v3}, Lnet/time4j/engine/EpochDays;->transform(JLnet/time4j/engine/EpochDays;)J

    move-result-wide v0

    const-wide/16 v2, 0x2d

    sub-long/2addr v0, v2

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 267
    :goto_0
    invoke-static {v2}, Lnet/time4j/calendar/SexagesimalName;->of(I)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    return-object v0
.end method

.method public getSexagesimalMonth()Lnet/time4j/calendar/SexagesimalName;
    .locals 11

    .line 225
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getSolarTerm()Lnet/time4j/calendar/SolarTerm;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lnet/time4j/calendar/SolarTerm;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    .line 227
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Branch;->values()[Lnet/time4j/calendar/SexagesimalName$Branch;

    move-result-object v3

    aget-object v3, v3, v0

    .line 228
    sget-object v4, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p0, v4}, Lnet/time4j/calendar/EastAsianCalendar;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianYear;->getElapsedCyclicYears()I

    move-result v4

    const/4 v5, 0x2

    if-gt v0, v5, :cond_0

    .line 231
    sget-object v6, Lnet/time4j/calendar/SolarTerm;->MINOR_11_DAXUE_255:Lnet/time4j/calendar/SolarTerm;

    iget-wide v7, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    const/4 v9, 0x0

    .line 233
    invoke-direct {p0, v9}, Lnet/time4j/calendar/EastAsianCalendar;->newYearUTC(I)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Lnet/time4j/engine/CalendarDays;->of(J)Lnet/time4j/engine/CalendarDays;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/time4j/calendar/EastAsianCalendar;->minus(Lnet/time4j/engine/CalendarDays;)Lnet/time4j/engine/Calendrical;

    move-result-object v7

    check-cast v7, Lnet/time4j/calendar/EastAsianCalendar;

    .line 232
    invoke-virtual {v6, v7}, Lnet/time4j/calendar/SolarTerm;->onOrAfter(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lnet/time4j/calendar/EastAsianCalendar;->getDaysSinceEpochUTC()J

    move-result-wide v6

    .line 236
    iget-wide v8, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    cmp-long v6, v8, v6

    if-ltz v6, :cond_0

    invoke-direct {p0, v1}, Lnet/time4j/calendar/EastAsianCalendar;->newYearUTC(I)J

    move-result-wide v6

    cmp-long v6, v8, v6

    if-gez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    sub-int/2addr v4, v1

    mul-int/2addr v4, v2

    add-int/2addr v4, v0

    add-int/2addr v4, v5

    const/16 v0, 0xa

    .line 241
    invoke-static {v4, v0}, Lnet/time4j/base/MathUtils;->floorModulo(II)I

    move-result v0

    .line 242
    invoke-static {}, Lnet/time4j/calendar/SexagesimalName$Stem;->values()[Lnet/time4j/calendar/SexagesimalName$Stem;

    move-result-object v1

    aget-object v0, v1, v0

    .line 243
    invoke-static {v0, v3}, Lnet/time4j/calendar/SexagesimalName;->of(Lnet/time4j/calendar/SexagesimalName$Stem;Lnet/time4j/calendar/SexagesimalName$Branch;)Lnet/time4j/calendar/SexagesimalName;

    move-result-object v0

    return-object v0
.end method

.method public getSolarTerm()Lnet/time4j/calendar/SolarTerm;
    .locals 2

    .line 140
    invoke-static {}, Lnet/time4j/calendar/EastAsianST;->getInstance()Lnet/time4j/calendar/EastAsianST;

    move-result-object v0

    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    check-cast v1, Lnet/time4j/calendar/EastAsianCalendar;

    invoke-virtual {v0, v1}, Lnet/time4j/calendar/EastAsianST;->getValue(Lnet/time4j/calendar/EastAsianCalendar;)Lnet/time4j/calendar/SolarTerm;

    move-result-object v0

    return-object v0
.end method

.method public getYear()Lnet/time4j/calendar/CyclicYear;
    .locals 1

    .line 124
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    invoke-static {v0}, Lnet/time4j/calendar/CyclicYear;->of(I)Lnet/time4j/calendar/CyclicYear;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 513
    iget-wide v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .line 283
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->leapMonth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lengthOfMonth()I
    .locals 7

    .line 393
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v0

    iget-wide v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lnet/time4j/calendar/EastAsianCS;->newMoonOnOrAfter(J)J

    move-result-wide v0

    .line 394
    iget v2, p0, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    int-to-long v5, v2

    add-long/2addr v5, v0

    iget-wide v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->utcDays:J

    sub-long/2addr v5, v0

    sub-long/2addr v5, v3

    long-to-int v0, v5

    return v0
.end method

.method public lengthOfYear()I
    .locals 5

    .line 410
    iget v0, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    .line 411
    iget v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x3c

    if-le v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 419
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v1

    iget v3, p0, Lnet/time4j/calendar/EastAsianCalendar;->cycle:I

    iget v4, p0, Lnet/time4j/calendar/EastAsianCalendar;->yearOfCycle:I

    invoke-virtual {v1, v3, v4}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide v3

    .line 420
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lnet/time4j/calendar/EastAsianCS;->newYear(II)J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lnet/time4j/format/CalendarType;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/CalendarType;

    invoke-interface {v1}, Lnet/time4j/format/CalendarType;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dangi"

    .line 523
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "korean"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lnet/time4j/calendar/CyclicYear;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 527
    sget-object v1, Lnet/time4j/calendar/CommonElements;->RELATED_GREGORIAN_YEAR:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p0, v1}, Lnet/time4j/calendar/EastAsianCalendar;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")-"

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->month:Lnet/time4j/calendar/EastAsianMonth;

    invoke-virtual {v1}, Lnet/time4j/calendar/EastAsianMonth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    iget v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    const/16 v1, 0x30

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    iget v1, p0, Lnet/time4j/calendar/EastAsianCalendar;->dayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBeginOfNextLeapMonth()Lnet/time4j/calendar/EastAsianCalendar;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 352
    invoke-virtual {p0}, Lnet/time4j/calendar/EastAsianCalendar;->getContext()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    check-cast v0, Lnet/time4j/calendar/EastAsianCalendar;

    .line 353
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getCalendarSystem()Lnet/time4j/calendar/EastAsianCS;

    move-result-object v1

    .line 354
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getCycle()I

    move-result v2

    .line 355
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getYear()Lnet/time4j/calendar/CyclicYear;

    move-result-object v3

    invoke-virtual {v3}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v3

    .line 358
    :goto_0
    invoke-virtual {v1, v2, v3}, Lnet/time4j/calendar/EastAsianCS;->getLeapMonth(II)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_0

    .line 361
    invoke-static {v4}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    invoke-virtual {v4}, Lnet/time4j/calendar/EastAsianMonth;->withLeap()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v4

    .line 363
    invoke-virtual {v0}, Lnet/time4j/calendar/EastAsianCalendar;->getMonth()Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {v0, v4}, Lnet/time4j/calendar/EastAsianMonth;->compareTo(Lnet/time4j/calendar/EastAsianMonth;)I

    move-result v0

    if-gez v0, :cond_0

    .line 364
    invoke-virtual {v1, v2, v3, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v2

    .line 365
    invoke-virtual {v1, v2, v3}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/16 v0, 0x3c

    if-le v3, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    .line 376
    :cond_1
    invoke-static {v5}, Lnet/time4j/calendar/EastAsianMonth;->valueOf(I)Lnet/time4j/calendar/EastAsianMonth;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0, v5}, Lnet/time4j/calendar/EastAsianCS;->transform(IILnet/time4j/calendar/EastAsianMonth;I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lnet/time4j/calendar/EastAsianCS;->transform(J)Lnet/time4j/calendar/EastAsianCalendar;

    move-result-object v0

    goto :goto_0
.end method
